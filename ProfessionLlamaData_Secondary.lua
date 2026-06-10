local _, ns = ...

ns.addGuide({
    key = "cooking", name = "Cooking", kind = "Secondary crafting",
    summary = "WoW-Professions Classic route using the cheapest meat or fish available at each cooking band.",
    tips = {
        "The site presents many interchangeable recipes; choose the cheapest meat or fish on your realm.",
        "Buy vendor recipes while traveling through Tanaris, Felwood, Winterspring, Booty Bay, or Hillsbrad.",
        "Artisan Cooking requires the Clamlette Surprise quest at level 35+ with 225 Cooking.",
    },
    shopping = {
        "About 55 starter meat or fish: Stringy Wolf Meat, Chunk of Boar Meat, Raw Brilliant Smallfish, or Raw Slitherskin Mackerel",
        "50 Raptor Egg, 50 Raptor Flesh",
        "Artisan quest: 12 Giant Egg, 10 Zesty Clam Meat, 20 Alterac Swiss",
        "Late route options: Zesty Clam Meat + Ice Cold Milk, Raw Spotted Yellowtail, Giant Egg, Tender Wolf Meat, Raw Redgill",
        "Final route options: Raw Sunscale Salmon, Raw Nightfin Snapper, or Sandworm Meat",
    },
    steps = {
        { "1-50", "Make about 55 starter recipes", "Stringy Wolf Meat, Chunk of Boar Meat, Raw Brilliant Smallfish, or Raw Slitherskin Mackerel", "Trainer or fish vendor recipe", "Charred Wolf Meat, Roasted Boar Meat, Brilliant Smallfish, and Slitherskin Mackerel all work." },
        { "50-100", "Make about 55-75 Journeyman recipes", "Bear Meat, Clam Meat + Refreshing Spring Water, Coyote Meat, Raw Longjaw Mud Snapper, Raw Rainbow Fin Albacore, or Strider Meat + Shiny Red Apple", "Trainer or vendor recipe", "Smoked Bear Meat turns yellow earlier, so make it first if using multiple foods." },
        { "100-130", "Make about 30-40 mid recipes", "Crawler Meat, Boar Ribs, Raw Bristle Whisker Catfish, or Crawler Claw", "Trainer or vendor recipe", "Crab Cake, Dry Pork Ribs, Bristle Whisker Catfish, or Cooked Crab Claw." },
        { "130-175", "50x Curiously Tasty Omelet", "50 Raptor Egg", "Expert cooking recipe", "Bristle Whisker Catfish or Hot Lion Chops can replace this if cheaper." },
        { "175-225", "50x Roast Raptor", "50 Raptor Flesh", "Vendor recipe", "Soothing Turtle Bisque or Mithril Head Trout can replace this if materials are cheaper." },
        { "225", "Complete Clamlette Surprise", "12 Giant Egg, 10 Zesty Clam Meat, 20 Alterac Swiss", "Artisan quest", "Horde starts from Zamja in Orgrimmar; Alliance starts from Daryl Riknussun in Ironforge." },
        { "225-275", "Make about 65 late recipes", "Zesty Clam Meat + Ice Cold Milk, Raw Spotted Yellowtail, Giant Egg, Tender Wolf Meat, or Raw Redgill", "Vendor recipes", "Undermine Clam Chowder, Spotted Yellowtail, Monster Omelet, Tender Wolf Steak, or Filet of Redgill." },
        { "275-300", "35x Poached Sunscale Salmon or Nightfin Soup", "35 Raw Sunscale Salmon or 35 Raw Nightfin Snapper", "Gikkix in Tanaris", "Alternative: 15x Smoked Desert Dumplings with 15 Sandworm Meat." },
    },
})

ns.addGuide({
    key = "firstaid", name = "First Aid", kind = "Secondary crafting",
    summary = "WoW-Professions Classic cloth conversion route with Expert books and Artisan Triage unlock.",
    tips = {
        "Buy Expert First Aid - Under Wraps plus Heavy Silk and Mageweave bandage books at 125.",
        "Learn Silk Bandage from your trainer before leaving at 150.",
        "Complete the Triage quest at 225 to continue toward 300.",
    },
    shopping = {
        "170 Linen Cloth, 180 Wool Cloth, 150 Silk Cloth",
        "120 Mageweave Cloth, 80 Runecloth",
        "Expert First Aid - Under Wraps, Manual: Heavy Silk Bandage, Manual: Mageweave Bandage",
    },
    steps = {
        { "1-40", "50x Linen Bandage", "50 Linen Cloth", "Trainer", "Train Apprentice at level 5." },
        { "40-75", "45x Heavy Linen Bandage", "90 Linen Cloth", "Trainer", "Train Journeyman after 75." },
        { "75-80", "15x Heavy Linen Bandage", "30 Linen Cloth", "Trainer", "Use remaining Linen." },
        { "80-115", "60x Wool Bandage", "60 Wool Cloth", "Trainer", "Switch to Wool at 80." },
        { "115-150", "60x Heavy Wool Bandage", "120 Wool Cloth", "Trainer", "Buy Expert books at 125 and learn Silk Bandage before leaving." },
        { "150-180", "50x Silk Bandage", "50 Silk Cloth", "Book/trainer", "Expert First Aid unlocks this band." },
        { "180-210", "50x Heavy Silk Bandage", "100 Silk Cloth", "Manual", "Read Manual: Heavy Silk Bandage." },
        { "210-225", "30x Mageweave Bandage", "30 Mageweave Cloth", "Manual", "Read Manual: Mageweave Bandage." },
        { "225-240", "30x Mageweave Bandage", "30 Mageweave Cloth", "Artisan trainer", "Complete Triage at 225 before going past cap." },
        { "240-260", "30x Heavy Mageweave Bandage", "60 Mageweave Cloth", "Artisan trainer", "Use Mageweave until Runecloth unlocks." },
        { "260-290", "50x Runecloth Bandage", "50 Runecloth", "Artisan trainer", "Late cloth stretch." },
        { "290-300", "15x Heavy Runecloth Bandage", "30 Runecloth", "Artisan trainer", "Final First Aid craft." },
    },
})

ns.addGuide({
    key = "fishing", name = "Fishing", kind = "Secondary gathering",
    summary = "WoW-Professions Classic route through starter water, capital cities, Dustwallow, Nat Pagle, and high-level zones.",
    tips = {
        "Buy a Fishing Pole and Shiny Baubles before starting.",
        "Buy Expert Fishing - The Bass and You and Bright Baubles from Old Man Heming in Booty Bay at 150.",
        "Artisan Fishing requires Nat Pagle, Angler Extreme at Fishing 225 and character level 35.",
    },
    shopping = {
        "Fishing Pole, Shiny Baubles, Bright Baubles",
        "Expert Fishing - The Bass and You from Old Man Heming in Booty Bay",
        "Bag space for the Nat Pagle quest fish",
    },
    steps = {
        { "1-75", "Fish starter-zone water", "Fishing Pole, Shiny Baubles", "Any starting zone", "Use Dun Morogh, Durotar, Elwynn Forest, Mulgore, Teldrassil, or Tirisfal Glades; capital cities are not starter zones." },
        { "75-150", "Fish capital cities or equivalent zones", "Fishing Pole", "Journeyman trainer", "Darnassus, Stormwind, Orgrimmar, Undercity, Thunder Bluff, or Barrens, Darkshore, Loch Modan, Silverpine, Westfall." },
        { "150-225", "Read Expert Fishing and fish Dustwallow Marsh", "Expert book, Bright Baubles", "Old Man Heming in Booty Bay", "Dustwallow is recommended because Nat Pagle starts there; Alterac, Arathi, Desolace, STV, Swamp of Sorrows, and Thousand Needles also work." },
        { "225", "Complete Nat Pagle, Angler Extreme", "Feralas Ahi, Misty Reed Mahi Mahi, Sar'theris Striker, Savage Coast Blue Sailfin", "Nat Pagle in Dustwallow Marsh", "Use Bright Baubles in Feralas to reduce catches getting away." },
        { "225-300", "Fish high-level zones", "Bright Baubles", "World water", "Felwood, Feralas, The Hinterlands, Tanaris, Un'Goro Crater, and Western Plaguelands." },
    },
})
