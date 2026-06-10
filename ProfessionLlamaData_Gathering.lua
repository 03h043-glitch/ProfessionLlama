local _, ns = ...

ns.addGuide({
    key = "herbalism", name = "Herbalism", kind = "Primary gathering",
    summary = "WoW-Professions Classic route from starter herbs to Felwood high-end herbs.",
    tips = {
        "Pair with Alchemy if you want to use the herbs for potions and elixirs.",
        "Train Journeyman before 75, train again at 150, and learn Artisan before the 225 cap.",
        "Some herbs in a zone require more skill than the entry point; skip them until eligible.",
    },
    shopping = {
        "No crafted materials. Enable Find Herbs and keep enough bag space.",
    },
    steps = {
        { "1-70", "Gather starter-zone herbs", "Peacebloom, Silverleaf, Earthroot", "Durotar, Mulgore, Tirisfal Glades, Elwynn Forest, Teldrassil, Dun Morogh", "Every starter zone is filled with herbs; choose the least contested route." },
        { "70-115", "Gather early Journeyman herbs", "Mageroyal, Briarthorn, Stranglekelp", "Barrens, Silverpine Forest, Loch Modan, Darkshore", "Learn Journeyman first. Stranglekelp requires Herbalism 85." },
        { "115-170", "Gather mid herbs", "Bruiseweed, Wild Steelbloom, Stranglekelp, Kingsblood, Liferoot", "Hillsbrad Foothills, Wetlands, Stonetalon Mountains", "Visit your trainer at 150. Kingsblood requires 125 and Liferoot requires 150." },
        { "170-205", "Gather Goldthorn-tier herbs", "Kingsblood, Liferoot, Fadeleaf, Goldthorn, Khadgar's Whisker", "Stranglethorn Vale, Arathi Highlands", "Khadgar's Whisker requires Herbalism 185." },
        { "205-230", "Gather Tanaris or Searing Gorge herbs", "Purple Lotus, Firebloom", "Tanaris, Searing Gorge", "Learn Artisan Herbalism before the 225 cap." },
        { "230-270", "Gather Hinterlands herbs", "Sungrass, Purple Lotus, Ghost Mushroom, Golden Sansam", "The Hinterlands", "Ghost Mushroom requires Herbalism 245 and appears in the marked cave route." },
        { "270-300", "Gather Felwood herbs", "Sungrass, Gromsblood, Golden Sansam, Dreamfoil, Mountain Silversage, Plaguebloom", "Felwood", "Final high-value route." },
    },
})

ns.addGuide({
    key = "mining", name = "Mining", kind = "Primary gathering",
    summary = "WoW-Professions Classic ore route from Copper through Rich Thorium.",
    tips = {
        "Pair with Blacksmithing or Engineering.",
        "Buy a Mining Pick and enable Find Minerals.",
        "Smelting Silver at 75 and Gold at 155 can cover useful skill points if ore prices are reasonable.",
    },
    shopping = {
        "Mining Pick. No crafted materials required.",
    },
    steps = {
        { "1-65", "Mine Copper", "Copper Ore", "Durotar, Mulgore, Tirisfal Glades, Elwynn Forest, Darkshore, Dun Morogh", "Night Elf players usually start Mining in Darkshore because Teldrassil has no Copper Ore." },
        { "65-125", "Mine Copper, Tin, and Silver", "Tin Ore, Copper Ore, Silver Ore", "Hillsbrad Foothills, Redridge Mountains, Ashenvale, The Barrens", "Train Journeyman. Smelt Silver at 75 to help reach 125." },
        { "125-175", "Mine Iron, Tin, and Gold", "Iron Ore, Tin Ore, Gold Ore", "Arathi Highlands, Desolace, Thousand Needles", "Train Expert. Smelt about 30 Gold Ore at 155 if it is affordable." },
        { "175-245", "Mine Mithril and Truesilver", "Mithril Ore, Truesilver Ore", "The Hinterlands, Tanaris", "Train Artisan at 225 if your trainer requirements are met." },
        { "245-275", "Mine Mithril, Truesilver, and Thorium", "Mithril Ore, Truesilver Ore, Thorium Ore", "Un'Goro Crater, Blasted Lands, Felwood", "Skip dangerous caves on lower-level characters." },
        { "275-300", "Mine Thorium and Rich Thorium", "Thorium Ore, Mithril Ore", "Un'Goro Crater, Eastern Plaguelands, Winterspring, Burning Steppes", "Rich Thorium becomes available here; elite areas are risky without stealth or gear." },
    },
})

ns.addGuide({
    key = "skinning", name = "Skinning", kind = "Primary gathering",
    summary = "WoW-Professions Classic beast route from Durotar/Dun Morogh to Feralas and Un'Goro.",
    tips = {
        "Keep a Skinning Knife in your bags.",
        "Up to Skinning 100, max skinable mob level is roughly skill/10 + 10; above 100 it is skill/5.",
        "Enchant Gloves - Skinning lets you skin one level higher than normal.",
    },
    shopping = {
        "Skinning Knife. No crafted materials required.",
    },
    steps = {
        { "1-75", "Skin starter beasts", "Skinning Knife", "Durotar or Dun Morogh", "Horde starts near Sen'jin and heads toward Orgrimmar; Alliance circles the lake near Ironforge and moves toward Loch Modan." },
        { "75-155/165", "Skin Barrens, Loch Modan, or Wetlands beasts", "Skinning Knife", "The Barrens, Loch Modan, Wetlands", "Horde routes toward Camp Taurajo and learns Expert from Dranh; Alliance follows Loch Modan/Wetlands then returns to Ironforge for Expert." },
        { "155/165-205", "Skin Thousand Needles or Arathi raptors", "Skinning Knife", "Thousand Needles, Arathi Highlands", "Reach 205 before leaving; some Arathi raptors need 180 Skinning." },
        { "205-230", "Skin around Camp Mojache", "Skinning Knife", "Feralas", "Both factions can use the Camp Mojache area. Learn Artisan after 205." },
        { "230-260", "Skin the Feralas Yeti cave or Hippogryphs", "Skinning Knife", "Feralas", "If the cave is farmed, head south and skin Hippogryphs." },
        { "260-280", "Skin higher-level Feralas Yetis and nearby beasts", "Skinning Knife", "Feralas", "Clear the higher Yeti cave, then skin beasts outside." },
        { "280-300", "Finish in Un'Goro or stay in Feralas", "Skinning Knife", "Un'Goro Crater or Feralas", "Un'Goro is recommended at 280, but Feralas beasts can finish the last points." },
    },
})
