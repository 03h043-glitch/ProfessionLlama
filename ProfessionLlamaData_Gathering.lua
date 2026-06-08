local _, ns = ...

ns.addGuide({
    key = "herbalism", name = "Herbalism", kind = "Primary gathering",
    summary = "Herb-tier route through dense Classic zones and edge loops.",
    tips = { "Enable Find Herbs.", "Gather yellow herbs instead of skipping them.", "Pair with Alchemy." },
    shopping = { "No crafted materials. Bring bag space and train before each cap." },
    steps = {
        { "1-70", "Peacebloom, Silverleaf, Earthroot", "Starter zones", "World nodes", "Circle hills and edges." },
        { "70-125", "Mageroyal, Briarthorn, Stranglekelp", "Westfall, Barrens, Silverpine, Darkshore", "World nodes", "Use rivers and coasts." },
        { "125-185", "Bruiseweed, Kingsblood, Liferoot, Wild Steelbloom", "Wetlands, Stonetalon, Ashenvale, Hillsbrad", "World nodes", "Mountain edges help." },
        { "185-245", "Fadeleaf, Goldthorn, Khadgar's Whisker", "Arathi, STV, Badlands, Swamp of Sorrows", "World nodes", "Swamp routes are strong." },
        { "245-285", "Sungrass, Blindweed, Firebloom, Gromsblood", "Feralas, Tanaris, Searing Gorge, Felwood", "World nodes", "Choose low-competition loops." },
        { "285-300", "Dreamfoil, Mountain Silversage, Plaguebloom, Icecap", "Winterspring, EPL, Silithus, Burning Steppes", "World nodes", "High value and contested." },
    },
})

ns.addGuide({
    key = "mining", name = "Mining", kind = "Primary gathering",
    summary = "Ore-tier route using smelting early and mounted node loops later.",
    tips = { "Enable Find Minerals.", "Smelting covers many early points.", "Pair with Blacksmithing or Engineering." },
    shopping = { "Mining Pick. No crafted materials required." },
    steps = {
        { "1-65", "Copper", "Starter zones", "World nodes/smelting", "Use caves and mountain edges." },
        { "65-125", "Tin, Silver, Bronze smelting", "Barrens, Westfall, Loch Modan, Silverpine", "World nodes", "Smelt Bronze for extra points." },
        { "125-175", "Iron and Gold", "Arathi, Thousand Needles, Desolace, Alterac", "World nodes", "Arathi outer loop is reliable." },
        { "175-230", "Mithril and Truesilver", "Badlands, Tanaris, Hinterlands, Searing Gorge", "World nodes", "Badlands is compact." },
        { "230-275", "Small Thorium plus Mithril", "Un'Goro, Winterspring, Burning Steppes, EPL", "World nodes", "Use wide mounted loops." },
        { "275-300", "Rich Thorium", "Winterspring, EPL, Silithus, Burning Steppes", "World nodes", "Profitable but contested." },
    },
})

ns.addGuide({
    key = "skinning", name = "Skinning", kind = "Primary gathering",
    summary = "Beast-level route. Move zones when mobs stop giving frequent skill-ups.",
    tips = { "Keep a Skinning Knife.", "Required skill is roughly beast level times five.", "Pair with Leatherworking." },
    shopping = { "Skinning Knife. No crafted materials required." },
    steps = {
        { "1-75", "Skin level 1-15 beasts", "Starter zones", "Beasts", "Stay in dense starter areas." },
        { "75-150", "Skin level 16-30 beasts", "Barrens, Westfall, Loch Modan, Silverpine, Darkshore", "Beasts", "Skin what other players leave." },
        { "150-200", "Skin level 31-40 beasts", "STV, Hillsbrad, Desolace, Arathi", "Beasts", "STV cats and raptors are excellent." },
        { "200-250", "Skin level 41-50 beasts", "Feralas, Tanaris, Hinterlands, Badlands", "Beasts", "Move when skill-ups slow." },
        { "250-300", "Skin level 51-60 beasts", "Un'Goro, Winterspring, EPL, Silithus", "Beasts", "Great endgame leather farms." },
    },
})
