local addonName, ns = ...

local PL = { addonName = addonName, guides = ns.guides or {} }
ns.PL = PL

PL.defaults = {
    selectedProfession = "alchemy",
    selectedStep = 1,
    point = { "CENTER", 0, 0 },
    completed = {},
    showOnlyIncomplete = false,
}

PL.colors = {
    panel = { 0.055, 0.065, 0.075, 0.96 },
    soft = { 0.075, 0.085, 0.095, 0.94 },
    border = { 0.24, 0.27, 0.30, 1 },
    accent = { 0.95, 0.72, 0.28, 1 },
    selected = { 0.22, 0.16, 0.08, 0.98 },
    hover = { 0.12, 0.13, 0.14, 0.98 },
    complete = { 0.08, 0.16, 0.11, 0.96 },
}

PL.backdrop = {
    bgFile = "Interface\\Buttons\\WHITE8x8",
    edgeFile = "Interface\\Buttons\\WHITE8x8",
    edgeSize = 1,
    insets = { left = 1, right = 1, top = 1, bottom = 1 },
}

function PL.CopyDefaults(source, target)
    for key, value in pairs(source) do
        if type(value) == "table" then
            if type(target[key]) ~= "table" then
                target[key] = {}
            end
            PL.CopyDefaults(value, target[key])
        elseif target[key] == nil then
            target[key] = value
        end
    end
end

function PL.Normalize(value)
    return string.lower(tostring(value or ""))
end

function PL.Contains(haystack, needle)
    if needle == "" then
        return true
    end
    return string.find(PL.Normalize(haystack), needle, 1, true) ~= nil
end

function PL.Join(values, separator)
    if type(values) == "string" then
        return values
    end
    if not values or #values == 0 then
        return "None"
    end
    return table.concat(values, separator or ", ")
end

function PL.Print(message)
    DEFAULT_CHAT_FRAME:AddMessage("|cffffc857Profession Llama:|r " .. tostring(message))
end

function PL.FindGuide(key)
    for index, guide in ipairs(PL.guides) do
        if guide.key == key then
            return guide, index
        end
    end
    return PL.guides[1], 1
end

function PL.SelectedGuide()
    return PL.FindGuide(PL.db and PL.db.selectedProfession)
end

PL.knownProfessions = {}

function PL.RefreshKnownProfessions()
    PL.knownProfessions = {}

    if not GetProfessions or not GetProfessionInfo then
        return
    end

    local function addProfession(index)
        if not index then
            return
        end
        local name = GetProfessionInfo(index)
        if name then
            PL.knownProfessions[PL.Normalize(name)] = true
        end
    end

    local profession1, profession2, archaeology, fishing, cooking, firstAid = GetProfessions()
    addProfession(profession1)
    addProfession(profession2)
    addProfession(archaeology)
    addProfession(fishing)
    addProfession(cooking)
    addProfession(firstAid)
end

function PL.GuideIsKnown(guide)
    return guide and PL.knownProfessions[PL.Normalize(guide.name)] == true
end

function PL.SortedGuides()
    local known, unknown = {}, {}

    for _, guide in ipairs(PL.guides) do
        if PL.GuideIsKnown(guide) then
            table.insert(known, guide)
        else
            table.insert(unknown, guide)
        end
    end

    local sorted = {}
    for _, guide in ipairs(known) do
        table.insert(sorted, guide)
    end
    for _, guide in ipairs(unknown) do
        table.insert(sorted, guide)
    end
    return sorted
end

function PL.StepFields(step)
    return step[1], step[2], step[3], step[4], step[5]
end

function PL.IsComplete(guideKey, stepIndex)
    return PL.db.completed[guideKey] and PL.db.completed[guideKey][stepIndex] == true
end

function PL.SetComplete(guideKey, stepIndex, complete)
    PL.db.completed[guideKey] = PL.db.completed[guideKey] or {}
    PL.db.completed[guideKey][stepIndex] = complete or nil
end

function PL.CountComplete(guide)
    local count = 0
    for index in ipairs(guide and guide.steps or {}) do
        if PL.IsComplete(guide.key, index) then
            count = count + 1
        end
    end
    return count
end

function PL.GuideMatches(guide, query)
    if query == "" then
        return true
    end
    if PL.Contains(guide.name, query) or PL.Contains(guide.kind, query) or PL.Contains(guide.summary, query) then
        return true
    end
    for _, item in ipairs(guide.shopping or {}) do
        if PL.Contains(item, query) then
            return true
        end
    end
    for _, step in ipairs(guide.steps or {}) do
        if PL.StepMatches(step, query) then
            return true
        end
    end
    return false
end

function PL.StepMatches(step, query)
    if query == "" then
        return true
    end
    for index = 1, 5 do
        if PL.Contains(step[index], query) then
            return true
        end
    end
    return false
end

function PL.InitDB()
    ProfessionLlamaDB = ProfessionLlamaDB or {}
    PL.CopyDefaults(PL.defaults, ProfessionLlamaDB)
    PL.db = ProfessionLlamaDB
end
