local _, ns = ...

ns.addGuide({
    key = "cooking", name = "Cooking", kind = "Secondary crafting",
    summary = "Zone-friendly food route using cheap spices, quest recipes, and common fish or meat.",
    tips = { "Buy vendor spices before crafting.", "Fishing can feed late recipes.", "Do the Artisan Cooking quest at 225." },
    shopping = { "Simple Flour", "Mild/Hot/Soothing Spices", "Bear Meat", "Crawler Meat", "Raptor Egg/Flesh", "Turtle Meat", "Giant Egg", "Bear Flank", "Sandworm Meat", "Raw Sunscale Salmon" },
    steps = {
        { "1-40", "Spice Bread", "Simple Flour, Mild Spices", "Trainer", "Vendor-only opener." },
        { "40-85", "Smoked Bear Meat or Boiled Clams", "Bear Meat or Clam Meat", "Vendor recipes", "Use your zone's meat." },
        { "85-130", "Crab Cake or Cooked Crab Claw", "Crawler Meat or Claw", "Vendor recipes", "Coastal zones are strong." },
        { "130-175", "Curiously Tasty Omelet or Roast Raptor", "Raptor Egg or Raptor Flesh", "Vendor recipes", "Common leveling materials." },
        { "175-225", "Soothing Turtle Bisque, Spider Sausage, or Tender Wolf Steak", "Turtle, spider, or wolf meat", "Quest/vendor", "Choose easiest source." },
        { "225-250", "Monster Omelet", "Giant Egg, Soothing Spices", "Vendor", "Complete Artisan quest first." },
        { "250-285", "Juicy Bear Burger or Charred Bear Kabobs", "Bear Flank", "Felwood vendors", "Excellent late path." },
        { "285-300", "Smoked Desert Dumplings or Poached Sunscale Salmon", "Sandworm Meat or Sunscale Salmon", "Quest/vendor", "Use Silithus if available." },
    },
})

ns.addGuide({
    key = "firstaid", name = "First Aid", kind = "Secondary crafting",
    summary = "Straight cloth conversion route with Expert manual and Artisan Triage unlocks.",
    tips = { "Buy Expert First Aid - Under Wraps at 125.", "Complete Triage at 225.", "Do not convert all cloth before heavy recipes unlock." },
    shopping = { "Linen Cloth", "Wool Cloth", "Silk Cloth", "Mageweave Cloth", "Runecloth", "Expert manual", "Heavy Silk manual", "Mageweave manual" },
    steps = {
        { "1-40", "Linen Bandage", "Linen Cloth", "Trainer", "Craft until slow." },
        { "40-80", "Heavy Linen Bandage", "Linen Cloth", "Trainer", "Train Journeyman." },
        { "80-115", "Wool Bandage", "Wool Cloth", "Trainer", "Switch at 80." },
        { "115-150", "Heavy Wool Bandage", "Wool Cloth", "Trainer/manual cap", "Read Expert manual at 125." },
        { "150-180", "Silk Bandage", "Silk Cloth", "Manual", "Same vendor as Expert." },
        { "180-210", "Heavy Silk Bandage", "Silk Cloth", "Manual", "Read when eligible." },
        { "210-240", "Mageweave Bandage", "Mageweave Cloth", "Manual", "Do Triage at 225." },
        { "240-260", "Heavy Mageweave Bandage", "Mageweave Cloth", "Triage trainer", "Artisan recipe." },
        { "260-290", "Runecloth Bandage", "Runecloth", "Triage trainer", "Late cloth stretch." },
        { "290-300", "Heavy Runecloth Bandage", "Runecloth", "Triage trainer", "Finish here." },
    },
})

ns.addGuide({
    key = "fishing", name = "Fishing", kind = "Secondary gathering",
    summary = "Water-level route using lures, the Expert book, and Nat Pagle's Artisan quest.",
    tips = { "Use the best lure you can buy.", "Buy Expert Fishing - The Bass and You in Booty Bay at 125.", "Do Nat Pagle's quest at 225." },
    shopping = { "Fishing Pole", "Shiny Bauble", "Bright Baubles", "Nightcrawlers", "Aquadynamic Fish Attractor", "Expert Fishing book" },
    steps = {
        { "1-75", "Fish starter-zone water", "Pole, Shiny Bauble", "Any trainer", "Capital canals work." },
        { "75-150", "Fish Barrens, Westfall, Loch Modan, Silverpine, or Darkshore", "Bright Baubles", "World water", "Train Journeyman." },
        { "150-225", "Fish STV, Hillsbrad, Wetlands, Desolace, or Thousand Needles", "Strong lure", "Expert book", "Read the book before cap." },
        { "225-250", "Complete Nat Pagle, then fish Dustwallow or Tanaris", "Aquadynamic lure", "Nat Pagle", "Unlock Artisan." },
        { "250-300", "Fish Feralas, Azshara, Hinterlands, EPL, or high-level coast", "Best lure", "World water", "Pools optional." },
    },
})
