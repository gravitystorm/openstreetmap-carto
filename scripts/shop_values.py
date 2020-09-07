#this script generates list of popular shop values - more than min_count() occurences in OpenStreetMap database according to taginfo
#it is useful during creating/updating list of shops displayed with generic dot icon

import urllib.request, json 

def main():
    with urllib.request.urlopen('https://taginfo.openstreetmap.org/api/4/key/values?key=shop&sortname=count&sortorder=desc') as url:
        data = json.loads(url.read().decode())
        data = data["data"]
        # Get an array of values that only includes values with more than min_count() occurrences
        counted = [x["value"] for x in data if x["count"] > min_count()]
        # Discard values with ;
        single_values = [x for x in counted if x.find(";") == -1]
        # Filter out empty strings
        no_empty = [x for x in single_values if len(x.strip()) > 0]

        on_wiki = [x["value"] for x in data if x["in_wiki"] and x["description"] != None]
        candidates = list(set(no_empty) | set(on_wiki))

        # Filter out exceptions in exceptions()
        filtered = list(set(candidates) - set(exceptions()))

        unknown_status = list(set(filtered) - set(known_good_values()))

        # Output in SQL style
        print("(", ", ".join(sorted([("'" + x + "'") for x in filtered])), ")")

        if unknown_status != []:
            print("unexpected, possible wanted values:", unknown_status)

def min_count():
    return 100

def exceptions():
    return [
   "no",
   "vacant",
   "empty",
   "disused",
   "unknown",
   "closed",
   "fixme",
   "FIXME",
   "FixMe",
   "other",
   "*",
   "winery", #see discussion in https://github.com/gravitystorm/openstreetmap-carto/pull/1632
   "antique", #see https://github.com/gravitystorm/openstreetmap-carto/pull/1900
   "betting", #see https://github.com/gravitystorm/openstreetmap-carto/pull/1900
   "delicatessen", #see https://github.com/gravitystorm/openstreetmap-carto/pull/1900
   "dive", #see https://github.com/gravitystorm/openstreetmap-carto/pull/1900
   "fish", #see https://github.com/gravitystorm/openstreetmap-carto/pull/1900
   "gambling", #see https://github.com/gravitystorm/openstreetmap-carto/pull/1900
   "insurance", #see https://github.com/gravitystorm/openstreetmap-carto/pull/1900
   "pharmacy", #see https://github.com/gravitystorm/openstreetmap-carto/pull/1900
   "street_vendor", #see https://github.com/gravitystorm/openstreetmap-carto/issues/2090
   "storage_rental", #see https://github.com/gravitystorm/openstreetmap-carto/issues/2090
   "retail", # nonspecific
   "yes", # nonspecific
   "organic", # https://wiki.openstreetmap.org/wiki/Tag:shop%3Dorganic
   "watch", # duplicate of shop=watches
   "shopping_centre", # duplicate of mall
   "marketplace", # duplicate of amenity=marketplace
   "market", # duplicate of amenity=marketplace
   "baby_care", # duplicate of shop=baby_goods
   "board", # very poor name, rare use
   "robot", # duplicate of shop=electronics
   "business_machines", # duplicate of shop=electronics
   "tyres", # duplicate of shop=tires
]

def known_good_values():
    return ["convenience", "supermarket", "clothes", "hairdresser",
  "bakery", "car_repair", "car", "kiosk", "beauty", "butcher",
  "hardware", "furniture", "florist", "mobile_phone", "electronics", "mall",
  "shoes", "alcohol", "doityourself", "car_parts", "jewelry", "optician",
  "books", "department_store", "gift", "bicycle", "greengrocer",
  "variety_store", "travel_agency", "sports", "confectionery", "laundry",
  "computer", "chemist", "stationery", "pet", "beverages", "newsagent",
  "dry_cleaning", "tyres", "motorcycle", "garden_centre", "toys", "copyshop",
  "cosmetics", "boutique", "funeral_directors", "tailor", "deli", "tobacco",
  "seafood", "farm", "interior_decoration", "photo", "ticket", "outdoor",
  "massage", "art", "houseware", "wine", "paint", "fabric", "trade",
  "bookmaker", "kitchen", "second_hand", "lottery", "pastry", "pawnbroker",
  "fashion", "bed", "charity", "tattoo", "antiques", "craft", "medical_supply",
  "hifi", "music", "coffee", "musical_instrument", "gas", "estate_agent",
  "video", "baby_goods", "tea", "hearing_aids", "bag", "perfumery",
  "carpet", "video_games", "curtain", "dairy", "erotic", "money_lender",
  "locksmith", "cheese", "frame", "wholesale", "bathroom_furnishing",
  "chocolate", "appliance", "e-cigarette", "ice_cream", "food",
  "herbalist", "electrical", "fishing", "watches", "nutrition_supplements",
  "radiotechnics", "agrarian", "money_transfer", "motorcycle_repair",
  "glaziery", "religion", "leather", "scuba_diving", "grocery", "sewing",
  "water", "health_food", "lighting", "weapons", "shoe_repair", "fishmonger",
  "tiles", "frozen_food", "photo_studio", "pet_grooming", "printing", "party",
  "building_materials", "flooring", "window_blind", "games",
  "hobby", "country_store", "vacuum_cleaner", "fuel", "hunting", "rental",
  "doors", "cannabis", "furnace", "pyrotechnics", "boat", "lamps", "fireplace",
  "swimming_pool", "accessories", "household", "water_sports", "model",
  "haberdashery", "pottery", "spices", "pasta", "jewellery",
  "hairdresser_supply", "discount", "office_supplies", "solarium", "candles",
  "camera", "caravan", "outpost",
  "souvenir", "anime", "catalogue", "collector",
  "communication", "car_service", "health", "energy", "security", "wood",
  "stationary", "trophy", "honey", "windows", "wool", "wedding", "ski",
  "storage_units", "tanning", "salon", "photography", "rice", "cafe",
  "glass", "bathroom", "garden_furniture", "golf", "medical", "tool_hire",
  "construction", "tableware", "signs", "fireworks", "printer_ink",
  "household_linen", "plumber", "plumbing", "beauty_salon", "groundskeeping",
  "print", "builder", "card", "gallery", "ship_chandler",
  "supplements", "agriculture", "chandler", "canoe_hire", "wigs", "nuts",
  "hvac", "equestrian", "military_surplus", "brewing_supplies", "trailer",
  "atv", "power_tools",  "hookah", "electrotools", "maps", "snowmobile",
  "açaí", "jetski", "vehicles", "mobile_home", "free_flying", "junk_yard",
  "general", "general_store",
  ]

main()