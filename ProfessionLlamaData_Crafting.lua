local _, ns = ...

ns.addGuide({
    key = "alchemy", name = "Alchemy", kind = "Primary crafting",
    summary = "Fast potion and elixir route using trainer recipes and commonly farmed herbs.",
    tips = { "Pair with Herbalism.", "Train new ranks before each cap.", "Use the cheaper herb option when a step lists alternatives." },
    shopping = { "Peacebloom", "Silverleaf", "Briarthorn", "Bruiseweed", "Stranglekelp", "Liferoot", "Kingsblood", "Goldthorn", "Sungrass", "Khadgar's Whisker", "Blindweed", "Golden Sansam", "Mountain Silversage", "Crystal Vials" },
    steps = {
        { "1-60", "Minor Healing Potion", "Peacebloom, Silverleaf, Crystal Vial", "Trainer", "Cheap opening craft." },
        { "60-110", "Lesser Healing Potion", "Minor Healing Potion, Briarthorn", "Trainer", "Uses your earlier potions." },
        { "110-140", "Healing Potion", "Bruiseweed, Briarthorn, Leaded Vial", "Trainer", "Good midgame value." },
        { "140-155", "Lesser Mana Potion", "Mageroyal, Stranglekelp, Empty Vial", "Trainer", "Short bridge." },
        { "155-185", "Greater Healing Potion", "Liferoot, Kingsblood, Leaded Vial", "Trainer", "Reliable skill-ups." },
        { "185-210", "Elixir of Agility or Mana Potion", "Goldthorn plus Stranglekelp or Wild Steelbloom", "Trainer", "Choose by herb price." },
        { "210-240", "Superior Healing Potion", "Sungrass, Khadgar's Whisker, Crystal Vial", "Trainer", "Train Artisan before 225." },
        { "240-265", "Elixir of Greater Agility", "Sungrass, Goldthorn, Crystal Vial", "Trainer", "Often sells well." },
        { "265-285", "Superior Mana Potion", "Sungrass, Blindweed, Crystal Vial", "Trainer", "Use if Blindweed is affordable." },
        { "285-300", "Major Healing Potion", "Golden Sansam, Mountain Silversage, Crystal Vial", "Recipe/vendor or drop", "Buy the recipe before the final push." },
    },
})

ns.addGuide({
    key = "blacksmithing", name = "Blacksmithing", kind = "Primary crafting",
    summary = "Ore-heavy path through stones, rods, iron, mithril, and thorium armor.",
    tips = { "Pair with Mining.", "Save grinding stones for later recipes.", "Bring extra Thorium for yellow skill-ups." },
    shopping = { "Rough/Coarse/Heavy/Solid/Dense Stone", "Copper", "Bronze", "Iron", "Steel", "Mithril", "Thorium", "Silver", "Gold", "Truesilver", "Heavy Leather" },
    steps = {
        { "1-25", "Rough Sharpening Stone", "Rough Stone", "Trainer", "Fast and cheap." },
        { "25-65", "Rough Grinding Stone", "Rough Stone", "Trainer", "Save these." },
        { "65-100", "Coarse Sharpening/Grinding Stone", "Coarse Stone", "Trainer", "Make grinding stones once available." },
        { "100-105", "Silver Rod", "Silver Bar, Rough Grinding Stone", "Trainer", "Enchanters buy extras." },
        { "105-125", "Rough Bronze Leggings", "Bronze Bar", "Trainer", "Simple bronze sink." },
        { "125-150", "Heavy Grinding Stone", "Heavy Stone", "Trainer", "Bank extras." },
        { "150-155", "Golden Rod", "Gold Bar, Coarse Grinding Stone", "Trainer", "Short bridge." },
        { "155-185", "Green Iron Leggings", "Iron Bar, Heavy Grinding Stone, Green Dye", "Trainer", "Swap if iron is pricey." },
        { "185-200", "Golden Scale Bracers", "Steel Bar, Heavy Grinding Stone", "Trainer", "Gets you to Artisan range." },
        { "200-225", "Solid Grinding Stone then Heavy Mithril Gauntlet", "Solid Stone, Mithril Bar", "Trainer", "Train Artisan before 225." },
        { "225-250", "Steel Plate Helm or Mithril Coif", "Steel/Mithril/Truesilver", "Trainer", "Use cheaper recipe." },
        { "250-275", "Dense Sharpening Stone then Thorium Bracers", "Dense Stone, Thorium Bar", "Trainer", "Good early Thorium route." },
        { "275-300", "Imperial Plate Bracers/Boots", "Thorium Bar, Rugged Leather", "Gadgetzan quest recipes", "Best final stretch if unlocked." },
    },
})

ns.addGuide({
    key = "enchanting", name = "Enchanting", kind = "Primary crafting",
    summary = "Dust-efficient route through bracer enchants, shield enchants, and required rods.",
    tips = { "Disenchant leveling greens.", "Make each runed rod as soon as it is required.", "Material counts vary because many crafts turn yellow." },
    shopping = { "Copper/Silver/Golden/Truesilver/Arcanite Rods", "Strange/Soul/Vision/Dream/Illusion Dust", "Magic/Astral/Mystic/Nether/Eternal Essences", "Black Pearl" },
    steps = {
        { "1-2", "Runed Copper Rod", "Copper Rod, Strange Dust, Lesser Magic Essence", "Trainer", "Required tool." },
        { "2-75", "Bracer - Minor Health", "Strange Dust", "Trainer", "Cheapest opener." },
        { "75-100", "Minor Deflection then Minor Stamina", "Strange Dust, Lesser Magic Essence", "Trainer", "Use the orange option." },
        { "100-101", "Runed Silver Rod", "Silver Rod, Strange Dust, Greater Magic Essence", "Trainer", "Required tool." },
        { "101-135", "Minor Agility then Shield - Minor Stamina", "Strange Dust, Astral Essence", "Trainer", "Pick by essence price." },
        { "135-165", "Bracer - Lesser Stamina then Spirit", "Soul Dust, Mystic Essence", "Trainer", "Steady Expert stretch." },
        { "165-200", "Bracer - Strength/Greater Strength", "Vision Dust", "Trainer", "Use the current orange recipe." },
        { "200-201", "Runed Truesilver Rod", "Truesilver Rod, Black Pearl, Greater Mystic Essence", "Trainer", "Required for Artisan." },
        { "201-245", "Greater Stamina then Gloves - Agility", "Dream Dust, Nether Essence", "Trainer", "Train Artisan before 225." },
        { "245-290", "Greater Strength then Shield - Greater Stamina", "Dream Dust, Greater Nether Essence", "Trainer", "Common late route." },
        { "290-300", "Cloak - Superior Defense or Chest - Major Health", "Illusion Dust, Greater Eternal Essence", "Formula/trainer", "Use your cheapest high-end formula." },
    },
})

ns.addGuide({
    key = "engineering", name = "Engineering", kind = "Primary crafting",
    summary = "Component-first path through powders, bolts, gizmos, mithril parts, and thorium.",
    tips = { "Pair with Mining.", "Save every component until you are done.", "Choose Goblin or Gnomish after 200 for toys, not for this route." },
    shopping = { "Rough/Coarse/Heavy/Solid/Dense Stone", "Copper", "Bronze", "Iron", "Steel", "Mithril", "Thorium", "Linen", "Wool", "Mageweave", "Runecloth", "Leather", "Weak Flux" },
    steps = {
        { "1-50", "Rough Blasting Powder then Copper Bolts", "Rough Stone, Copper Bar", "Trainer", "Keep both outputs." },
        { "50-75", "Arclight Spanner, Copper Tube, Rough Boomstick", "Copper Bar, Rough Powder, Wooden Stock", "Trainer", "Make the spanner once." },
        { "75-125", "Coarse Powder, Target Dummy, Silver Contact", "Coarse Stone, Bronze Bar, Wool, Silver Bar", "Trainer", "Use cheaper option." },
        { "125-175", "Heavy Powder, Whirring Gizmo, Bronze Framework", "Heavy Stone, Bronze Bar, Wool, Medium Leather", "Trainer", "Bank components." },
        { "175-205", "Solid Powder then Mithril Tube", "Solid Stone, Mithril Bar", "Trainer", "Save tubes." },
        { "205-245", "Unstable Trigger then Mithril Casing", "Mithril Bar, Mageweave, Solid Powder", "Trainer", "Key midgame parts." },
        { "245-260", "Hi-Explosive Bomb", "Mithril Casing, Unstable Trigger, Solid Powder", "Trainer", "Useful and reliable." },
        { "260-285", "Thorium Widget", "Thorium Bar, Runecloth", "Trainer", "Efficient Thorium entry." },
        { "285-300", "Thorium Tube or Dense Blasting Powder", "Thorium Bar or Dense Stone", "Trainer", "Finish with cheapest orange/yellow option." },
    },
})
