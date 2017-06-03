#!/bin/bash

function help {
    [ ! -z "$1" ] && echo 1>&2 -e "\e[31m$1\e[m\n"
    echo 1>&2 "This program outputs the most frequent values for a given tag, filtering out bad values."
    echo 1>&2 "The default output can be used as part of an SQL query. The verbose output is useful for debuging."
    echo 1>&2
    echo 1>&2 "usage: $(basename $0) [-k <key>] [-l <limit>] [-w <whitelist>] [-b <blacklist>] [-W <whitelist>] [-B <blacklist>] [-u <url>] [-v] [-h]"
    echo 1>&2 "   -k <key>:       Specify the tag key ($KEY)"
    echo 1>&2 "   -l <limit>:     Specify the minimum number of values ($LIMIT)"
    echo 1>&2 "   -w <whitelist>: Allow extra characters on top of the default [a-z_]"
    echo 1>&2 "   -b <blacklist>: Disallow extra values on top of the default no|false|undefined|unknown|fixme"
    echo 1>&2 "   -W <whitelist>: Specify the exact regexp of allowed values ($WHITELIST)"
    echo 1>&2 "   -B <blacklist>: Specify the exact regexp of disallowed values ($BLACKLIST)"
    echo 1>&2 "   -u <url>:       Specify the taginfo url ($URL)"
    echo 1>&2 -e "   -v:             Display results as a verbose colored list (${COL_OK}frequent${COL_RESET}, ${COL_LIMIT}infrequent${COL_RESET}, ${COL_WHITELIST}not whitelisted${COL_RESET}, ${COL_BLACKLIST}blacklisted${COL_RESET})"
    echo 1>&2 "   -h:             Show this help"
    exit 1
}

# Shell safety measures
set -e
LC_ALL=C

# Default option values
KEY=tunnel
LIMIT=100
VERBOSE=false
WHITELIST='^[a-z_]+$'
BLACKLIST='^(no|false|undefined|unknown|fixme)$'
URL=taginfo.openstreetmap.org/api/4

# Output
COL_OK="\e[32m"
COL_LIMIT=""
COL_WHITELIST="\e[31m"
COL_BLACKLIST="\e[33m"
COL_RESET="\e[m"
COMMA=""
function out {
    if [ "$VERBOSE" = true ]; then
        case $1 in
            ok)        echo -e "$COL_OK$COUNT\t$VALUE$COL_RESET";;
            whitelist) echo -e "$COL_WHITELIST$COUNT\t$VALUE$COL_RESET";;
            blacklist) echo -e "$COL_BLACKLIST$COUNT\t$VALUE$COL_RESET";;
            limit)     echo -e "$COL_LIMIT$COUNT\t$VALUE$COL_RESET";;
        esac
    else
        if [ $1 = ok ]; then
            echo -n "$COMMA'$VALUE'"
            COMMA=,
        fi
    fi
}

# Parse options
while true; do
    case "$1" in
        -k) KEY=$2;shift;;
        -l) LIMIT=$2;shift;;
        -w) WHITELIST="^[a-z_$2]+\$";shift;;
        -W) WHITELIST="$2";shift;;
        -b) BLACKLIST="^(no|false|undefined|unknown|fixme|$2)\$";shift;;
        -B) BLACKLIST="$2";shift;;
        -u) URL=$2;shift;;
        -v) VERBOSE=true;;
        -h) help;;
        '') break;;
        *) help "Unrecognized option '$1'"
    esac
    shift
done

# Main loop
IFS="
"
for i in $(wget -qO - "http://$URL/key/values?key=$KEY&sortname=count_all&sortorder=desc"|sed 's/{/\n{/g;'|grep '^{"value'); do
    VALUE=$(grep -oE '"value":"[^"]+' <<< "$i"|cut -d: -f2|tr -d '"')
    COUNT=$(grep -oE '"count":[0-9]+' <<< "$i"|cut -d: -f2)
    if grep -qE "$WHITELIST" <<< "$VALUE"; then
        if grep -qE "$BLACKLIST" <<< "$VALUE"; then
            out blacklist
        else
            if [ "$COUNT" -ge "$LIMIT" ] ; then
                out ok
            else
                out limit
                [ "$VERBOSE" = true ] || exit
            fi
        fi
    else
        out whitelist
    fi
done
