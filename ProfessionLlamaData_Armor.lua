local _, ns = ...

ns.addGuide({
    key = "leatherworking", name = "Leatherworking", kind = "Primary crafting",
    summary = "Skinning-friendly route through armor kits, cured hides, Nightscape, and Wicked Leather.",
    tips = { "Pair with Skinning.", "Cure hides before you need them.", "Specializations are optional for leveling." },
    shopping = { "Light/Medium/Heavy/Thick/Rugged Leather", "Light/Medium/Heavy Hides", "Salt", "Thread", "Black Dye", "Rune Thread" },
    steps = {
        { "1-55", "Light Armor Kit then Cured Light Hide", "Light Leather, Light Hide, Salt", "Trainer", "Keep cured hides." },
        { "55-100", "Embossed Gloves then Fine Leather Belt", "Light Leather, Thread", "Trainer", "Simple early crafts." },
        { "100-150", "Cured Medium Hide, Dark Leather Boots, Hillman's Belt", "Medium Hide, Medium Leather, Dye, Thread", "Trainer", "Finish Expert range." },
        { "150-190", "Cured Heavy Hide, Heavy Armor Kit, Barbaric Shoulders", "Heavy Hide, Heavy Leather", "Trainer", "Prepare heavy hides." },
        { "190-225", "Guardian Gloves then Nightscape Headband", "Heavy/Thick Leather, Silken Thread", "Trainer", "Train Artisan before 225." },
        { "225-260", "Nightscape Pants/Tunic then Rugged Armor Kit", "Thick Leather, Rugged Leather", "Trainer", "Use cheaper Nightscape recipe." },
        { "260-300", "Wicked Leather Bracers then Headband", "Rugged Leather, Black Dye, Rune Thread", "Trainer", "Bring extra Rugged Leather." },
    },
})

ns.addGuide({
    key = "tailoring", name = "Tailoring", kind = "Primary crafting",
    summary = "Cloth route through bolts, linen/wool gear, Mageweave, and Runecloth.",
    tips = { "Farm humanoids or dungeons.", "Only bolt cloth as needed.", "Pair with Enchanting to disenchant crafted greens." },
    shopping = { "Linen", "Wool", "Silk", "Mageweave", "Runecloth", "Thread", "Dyes", "Spider's Silk", "Rugged Leather" },
    steps = {
        { "1-75", "Bolt of Linen, Heavy Linen Gloves, Reinforced Linen Cape", "Linen Cloth, Coarse Thread", "Trainer", "Move to Wool at 75." },
        { "75-125", "Bolt of Wool, Gray Woolen Shirt, Double-stitched Shoulders", "Wool Cloth, Fine Thread, Dye", "Trainer", "Good Journeyman path." },
        { "125-175", "Bolt of Silk, Azure Silk Hood, Silk Headband", "Silk Cloth, Blue Dye, Fine Thread", "Trainer", "Steady Silk stretch." },
        { "175-220", "Bolt of Mageweave, Crimson Silk Vest, Black Mageweave Gloves", "Silk, Mageweave, Silken Thread", "Trainer", "Pick cheaper cloth mix." },
        { "220-250", "Black Mageweave Headband or Shoulders", "Mageweave, Heavy Silken Thread", "Trainer", "Train Artisan before 225." },
        { "250-275", "Bolt of Runecloth then Runecloth Belt", "Runecloth, Rune Thread", "Trainer", "Prepare final bolts." },
        { "275-300", "Runecloth Bag then Runecloth Gloves", "Runecloth, Rugged Leather, Rune Thread", "Trainer", "Bags may sell well." },
    },
})
