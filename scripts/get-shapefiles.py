#!/usr/bin/env python

# This script generates and populates the 'data' directory with all needed
# shapefiles.

from __future__ import (
    division,
    absolute_import,
    print_function,
    unicode_literals)
import os
import errno
import tarfile
import zipfile
import subprocess
import distutils.spawn
import argparse
import sys
import tempfile
import logging
import time
import email.utils
import atexit
import time

if sys.version_info >= (3,):
    import urllib.request as urllib2
    import urllib.parse as urlparse
else:
    import urllib2
    import urlparse

start = time.time()
data_dir = 'data'
settings = {
    # Keys 1, 2, 3, ... set the arg short-options and the related process
    # ordering. Use > 0 to allow processing.
    1: {
        'directory': 'world_boundaries',
        'url': 'https://planet.openstreetmap.org/historical-shapefiles/world_boundaries-spherical.tgz',  # noqa
        'type': 'tgz',
        'shp_basename': [
            'world_bnd_m',
            'places',
            'world_boundaries_m'],
        'long_opt': '--world-boundaries'
    },

    2: {
        'directory': 'simplified-land-polygons-complete-3857',
        'url': 'https://osmdata.openstreetmap.de/download/simplified-land-polygons-complete-3857.zip',  # noqa
        'type': 'zip',
        'shp_basename': ['simplified_land_polygons'],
        'long_opt': '--simplified-land'
    },

    3: {
        'directory': 'ne_110m_admin_0_boundary_lines_land',
        'url': 'http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip',  # noqa
        'type': 'zip_dir',
        'shp_basename': ['ne_110m_admin_0_boundary_lines_land'],
        'long_opt': '--ne-admin'
    },

    4: {
        'directory': 'land-polygons-split-3857',
        'url': 'https://osmdata.openstreetmap.de/download/land-polygons-split-3857.zip',  # noqa
        'type': 'zip',
        'shp_basename': ['land_polygons'],
        'long_opt': '--land-polygons'
    },

    5: {
        'directory': 'antarctica-icesheet-polygons-3857',
        'url': 'https://osmdata.openstreetmap.de/download/antarctica-icesheet-polygons-3857.zip',  # noqa
        'type': 'zip',
        'shp_basename': ['icesheet_polygons'],
        'long_opt': '--icesheet-polygons'
    },

    6: {
        'directory': 'antarctica-icesheet-outlines-3857',
        'url': 'https://osmdata.openstreetmap.de/download/antarctica-icesheet-outlines-3857.zip',  # noqa
        'type': 'zip',
        'shp_basename': ['icesheet_outlines'],
        'long_opt': '--icesheet-outlines'
    }
}

u_prompt = True


def exit_handler(dir_path):
    # Removing empty directory
    try:
        os.rmdir(dir_path)
    except Exception:
        pass


def download_file(
    url,
    desc=None,
    option_force_update=False,
        option_no_curl=False):
    global u_prompt
    try:
        scheme, netloc, path, query, fragment = urlparse.urlsplit(url)
        file_name = os.path.basename(path)
        if not file_name:
            file_name = 'downloaded.file'
        if desc:
            file_name = os.path.join(desc, file_name)

        org_file_modified = None
        org_file_size = None
        if os.path.exists(file_name):
            org_file_modified = time.localtime((os.path.getmtime(file_name)))
            org_file_size = int(os.path.getsize(file_name))

        curl_used = 0
        if not option_no_curl and distutils.spawn.find_executable("curl"):
            curl_used = 1
            sys.stdout.flush()
            if os.path.exists(file_name) and not option_force_update:
                if subprocess.call(
                    ["curl", "-R", "-z", file_name, "-L", "-o", file_name, url],
                        stderr=subprocess.STDOUT) != 0:
                    sys.exit("\n\n   'curl' error: download failed.\n")
                curl_used = 2
            else:
                if subprocess.call(
                    ["curl", "-R", "-L", "-o", file_name, url],
                        stderr=subprocess.STDOUT) != 0:
                    sys.exit("\n\n   'curl' error: download failed.\n")
            sys.stdout.flush()

        u = urllib2.urlopen(url)
        meta = u.info()

        # Compare dates and sizes
        local_file_modified = None
        local_file_size = None
        if os.path.exists(file_name):
            local_file_modified = time.localtime((os.path.getmtime(file_name)))
            local_file_size = int(os.path.getsize(file_name))
        meta_func = meta.getheaders if hasattr(
            meta, 'getheaders') else meta.get_all
        host_file_modified = email.utils.parsedate(
            meta_func("last-modified")[0])
        meta_length = meta_func("Content-Length")
        host_file_size = None
        if meta_length:
            host_file_size = int(meta_length[0])

        # Do a file check control after using curl (which looks like not
        # including it internally)
        if curl_used == 2 and (host_file_size != local_file_size):
            print(
                "     Warning: file size differs. Downloading the file again.")
            curl_used = 0
        if curl_used > 0:
            u.close()
            if (not option_force_update and local_file_size is not None and
                    (org_file_modified == local_file_modified) and
                    (org_file_size == local_file_size)):
                print("     No newer file to download.")
                return file_name, 0
            else:
                return file_name, 1

        if (not option_force_update and os.path.exists(file_name) and
                (host_file_modified <= local_file_modified) and
                (host_file_size == local_file_size)):
            print("     No newer file to download.", end="")
            if u_prompt:
                print(" (Use -u to force downloading file)", end="")
                u_prompt = False
            print()
            u.close()
            return file_name, 0

        with open(file_name, 'wb') as f:
            print(" Bytes: {0:10}".format(host_file_size))

            file_size_dl = 0
            block_sz = 65536
            while True:
                buffer = u.read(block_sz)
                if not buffer:
                    if file_size_dl != host_file_size:
                        sys.exit("\n\n   Error: download with invalid size.\n")
                    break

                file_size_dl += len(buffer)
                f.write(buffer)

                status = "{0:18}".format(file_size_dl)
                if host_file_size:
                    status += "   [{0:3.0f}%]".format(
                        file_size_dl *
                        100 /
                        host_file_size)
                status += chr(13)
                print(status, end="")
            f.close()
            u.close()
            os.utime(
                file_name,
                (time.mktime(host_file_modified),
                    time.mktime(host_file_modified)))
            print()

        return file_name, 2
    except urllib2.HTTPError as e:
        sys.exit(
            "\n\n   Error: download failed. (error code: " +
            str(e.code) +
            ", error reason: " + e.reason + ")\n")
    except Exception as e:
        sys.exit("\n\n   Error: download failed.\n" + str(e) + "\n")


def main():

    # Option handling

    parser = argparse.ArgumentParser(
        epilog="This script generates and populates the '" + data_dir +
        "' directory with all needed shapefiles, including indexing " +
        " them through shapeindex.")
    parser.add_argument(
        '-c', "--check", dest='option_check_mode', action='store_true',
        help="check whether the '" + data_dir + "' directory already exists")
    parser.add_argument(
        "-d", "--directory", dest="data_dir",
        help="set the name of the data directory (default: '" +
        data_dir + "')",
        default=data_dir, metavar="<directory name>")
    parser.add_argument(
        '-e', "--no-extract", dest='option_no_extract', action='store_true',
        help="do not populate target directories with the expansion " +
        "of downloaded data")
    parser.add_argument(
        '-f', "--force", dest='option_force', action='store_true',
        help="force continuing even if project.mml does not exist")
    parser.add_argument(
        '-l', "--no-curl", dest='option_no_curl', action='store_true',
        help="do not use 'curl' even if available")
    parser.add_argument(
        '-n', "--no-download", dest='option_no_download', action='store_true',
        help="do not download archive if already existing locally")
    parser.add_argument(
        '-p', "--pause", dest='option_pause_mode', action='store_true',
        help="pause before starting")
    parser.add_argument(
        '-r', "--remove", dest='option_remove', action='store_true',
        help="remove each downloaded archive after its expansion")
    parser.add_argument(
        '-s', "--no-shape", dest='option_no_shape', action='store_true',
        help="do not run shapeindex")
    parser.add_argument(
        '-u', "--update", dest='option_force_update', action='store_true',
        help="force performing an update operation even if not needed " +
        "(e.g., downloading, expanding, indexing)")
    for element in sorted(settings):
        parser.add_argument(
            settings[element]['long_opt'],
            dest='option_filter', action='append_const', const=element,
            help="only process " + settings[element]['directory'])

    args = parser.parse_args()

    # Initial checks

    if not args.option_no_shape and (
            not distutils.spawn.find_executable("shapeindex")):
        sys.exit(
            """\n   Error: you need shapeindex (or shapeindex is not in the
   PATH). Otherwise, use '-s' option to skip shapeindex
   (indexing shapes is suggested for performance improvement).\n""")

    if args.option_force:
        os.chdir(os.path.join(os.path.dirname(__file__)))
    else:
        os.chdir(os.path.join(os.path.dirname(__file__), '..'))
        if not os.path.isfile("project.mml"):
            sys.exit(
                """\n   Error: project.mml not found.
   Are you sure you are in the correct folder?
   Otherwise, use '-f' option to go on creating or updating the '""" +
                args.data_dir + """' directory
   placed in the same path of this script.\n""")

    if os.path.isfile(args.data_dir):
        sys.exit(
            """\n   Error: existing file named '""" +
            args.data_dir +
            """'\n""")
    if args.option_check_mode:
        if os.path.isdir(args.data_dir):
            sys.exit(
                """\n   A directory named '""" + args.data_dir +
                """' already exists.
   Please consider renaming it.
   Otherwise, remove '-c' option to allow updating.\n""")

    if args.option_pause_mode:
        print(
            "\nThis script generates and populates the '" + args.data_dir +
            "' directory with all needed shapefiles.\n")
        try:
            input(
                "Press Enter to continue " +
                "(remove '-p' option to avoid this message)...")
        except Exception:
            pass

    print("\nStarting " + os.path.basename(__file__) + "...")

    # Processing

    for element in sorted(settings):

        if (not args.option_filter or
                (args.option_filter and
                 element in args.option_filter)) and element > 0:

            dir_name = settings[element]['directory']
            dir_path = os.path.join(args.data_dir, dir_name)
            path_name = os.path.join(
                args.data_dir,
                settings[element]['url'].rsplit('/', 1)[-1])

            # Creating directory
            try:
                os.makedirs(dir_path)
                atexit.register(exit_handler, dir_path)
            except Exception:
                pass

            # Downloading
            download_type = -1
            if not args.option_no_download or not os.path.isfile(path_name):
                print(str(element) + "-1. Downloading '" + dir_name + "'...")
                archive_file_name, download_type = download_file(
                    settings[element]['url'], args.data_dir,
                    args.option_force_update, args.option_no_curl)

            # Expanding
            if ((not args.option_no_extract and download_type > 0) or
                    args.option_force_update):
                sys.stdout.flush()
                print()
                print(
                    str(element) + "-2. Expanding '" + dir_name + "'...",
                    end="")
                sys.stdout.flush()
                if settings[element]['type'] == 'tgz':
                    tar = tarfile.open(path_name)
                    try:
                        tar.extractall(args.data_dir)
                    except Exception:
                        sys.exit(" Failed (try with -u option).\n")
                    tar.close()
                elif settings[element]['type'] == 'zip':
                    zip = zipfile.ZipFile(path_name)
                    try:
                        zip.extractall(args.data_dir)
                    except Exception:
                        sys.exit(" Failed (try with -u option).\n")
                    zip.close()
                elif settings[element]['type'] == 'zip_dir':
                    zip = zipfile.ZipFile(path_name)
                    try:
                        zip.extractall(dir_path)
                    except Exception:
                        sys.exit(" Failed (try with -u option).\n")
                    zip.close()
                else:
                    sys.exit(
                        "\n\nInternal error: unmanaged 'type'='" +
                        settings[element]['type'] + "'.\n")
                sys.stdout.flush()
                print(" Done.\n")

            # Removing archive
            if args.option_remove:
                try:
                    os.remove(path_name)
                except OSError:
                    sys.exit("\n\n\nCannot remove '" + path_name + "'\n")

            # Indexing
            for item, shp_basename in enumerate(
                    settings[element]['shp_basename']):
                shp_file_name = os.path.join(dir_path, shp_basename + ".shp")
                index_file_name = os.path.join(
                    dir_path, shp_basename + ".index")
                shp_file_modified = None
                if os.path.exists(shp_file_name):
                    shp_file_modified = time.localtime(
                        (os.path.getmtime(shp_file_name)))
                index_file_modified = None
                if os.path.exists(index_file_name):
                    index_file_modified = time.localtime(
                        (os.path.getmtime(index_file_name)))
                if (not args.option_no_shape and shp_file_modified is None
                        and index_file_modified is not None):
                    try:
                        os.remove(index_file_name)
                    except OSError:
                        sys.exit(
                            "\n\n\nCannot remove '" +
                            index_file_name +
                            "'\n")
                if shp_file_modified is None:
                    sys.exit("\n\n\nMissing '" + shp_file_name + "'\n")
                if (args.option_force_update or index_file_modified is None or
                        (shp_file_modified is not None and index_file_modified is not None and
                         (shp_file_modified > index_file_modified))):
                    if args.option_no_shape and index_file_modified is not None:
                        if len(settings[element]['shp_basename']) == 1:
                            print(
                                str(element) +
                                "-3" +
                                ". Removing old index '" +
                                index_file_name +
                                "'...")
                        else:
                            print(str(element) + "-3-" + str(item + 1) +
                                  ". Removing old index '" + index_file_name + "'...")
                        sys.stdout.flush()
                        try:
                            os.remove(index_file_name)
                        except OSError:
                            sys.exit(
                                "\n\n\nCannot remove old index '" +
                                index_file_name +
                                "'\n")
                            pass
                        print()
                    if not args.option_no_shape:
                        if len(settings[element]['shp_basename']) == 1:
                            print(str(element) + "-3" + ". Indexing '" +
                                  shp_file_name + "'...")
                        else:
                            print(str(element) + "-3-" + str(item + 1) +
                                  ". Indexing '" + shp_file_name + "'...")
                        sys.stdout.flush()
                        if (subprocess.call(["shapeindex", "--shape_files",
                                             shp_file_name],
                                            stderr=subprocess.STDOUT) != 0):
                            sys.exit(
                                "\n   Indexing error: shapeindex failed.\n")
                        sys.stdout.flush()
                        print()

    # Finishing
    if time.time()-start < 2:
        print ("...script completed.\n")
    else:
        print ("...script completed in %.1f seconds.\n" % (time.time()-start))

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        sys.exit("\n\n\nInterrupted: you pressed Ctrl+C!\n")
    except Exception as e:
        sys.exit("\n   Error. " + str(e) + "\n")
