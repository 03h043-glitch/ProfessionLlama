local _, ns = ...
local PL = ns.PL

local function savePoint()
    local point, _, _, x, y = PL.frame:GetPoint(1)
    PL.db.point = { point or "CENTER", math.floor(x or 0), math.floor(y or 0) }
end

function PL.BuildFrame()
    if PL.frame then
        return
    end

    local frame = CreateFrame("Frame", "ProfessionLlamaFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate" or nil)
    PL.frame = frame
    frame:SetSize(920, 610)
    frame:SetClampedToScreen(true)
    frame:SetFrameStrata("DIALOG")
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing(); savePoint() end)
    PL.ApplyBackdrop(frame, { 0.035, 0.04, 0.05, 0.98 })
    frame:Hide()

    frame:SetPoint(PL.db.point[1] or "CENTER", UIParent, PL.db.point[1] or "CENTER", PL.db.point[2] or 0, PL.db.point[3] or 0)
    table.insert(UISpecialFrames, "ProfessionLlamaFrame")

    frame.title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    frame.title:SetPoint("TOPLEFT", 18, -15)
    frame.title:SetText("Profession Llama")

    frame.subtitle = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    frame.subtitle:SetPoint("TOPLEFT", frame.title, "BOTTOMLEFT", 0, -4)
    frame.subtitle:SetText("WoW Classic profession guide")

    local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", -5, -5)
    close:SetScript("OnClick", function() frame:Hide() end)

    local searchLabel = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    searchLabel:SetPoint("TOPLEFT", 18, -58)
    searchLabel:SetText("Search")

    frame.searchBox = CreateFrame("EditBox", nil, frame, "InputBoxTemplate")
    frame.searchBox:SetSize(180, 24)
    frame.searchBox:SetPoint("TOPLEFT", searchLabel, "BOTTOMLEFT", 0, -4)
    frame.searchBox:SetAutoFocus(false)
    frame.searchBox:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
    frame.searchBox:SetScript("OnEnterPressed", function(self) self:ClearFocus() end)
    frame.searchBox:SetScript("OnTextChanged", function(self)
        PL.searchText = PL.Normalize(self:GetText())
        PL.Refresh()
    end)

    frame.incompleteOnly = CreateFrame("CheckButton", "ProfessionLlamaIncompleteOnly", frame, "UICheckButtonTemplate")
    frame.incompleteOnly:SetPoint("LEFT", frame.searchBox, "RIGHT", 16, 0)
    frame.incompleteOnly:SetChecked(PL.db.showOnlyIncomplete)
    frame.incompleteOnly:SetScript("OnClick", function(self)
        PL.db.showOnlyIncomplete = self:GetChecked() and true or false
        PL.Refresh()
    end)

    local incompleteText = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    incompleteText:SetPoint("LEFT", frame.incompleteOnly, "RIGHT", -2, 0)
    incompleteText:SetText("Incomplete only")

    local left = PL.Panel(frame, PL.colors.panel)
    left:SetPoint("TOPLEFT", 18, -112)
    left:SetSize(190, 450)
    local leftTitle = left:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    leftTitle:SetPoint("TOPLEFT", 10, -9)
    leftTitle:SetText("Professions")
    frame.professionCount = left:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall")
    frame.professionCount:SetPoint("TOPRIGHT", -10, -11)
    frame.professionScroll, frame.professionChild = PL.ScrollFrame(left)
    frame.professionScroll:SetPoint("TOPLEFT", 10, -34)
    frame.professionScroll:SetPoint("BOTTOMRIGHT", -28, 10)
    frame.professionChild:SetWidth(150)

    local middle = PL.Panel(frame, PL.colors.panel)
    middle:SetPoint("TOPLEFT", left, "TOPRIGHT", 12, 0)
    middle:SetSize(350, 450)
    local middleTitle = middle:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    middleTitle:SetPoint("TOPLEFT", 10, -9)
    middleTitle:SetText("Leveling Steps")
    frame.stepCount = middle:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall")
    frame.stepCount:SetPoint("TOPRIGHT", -10, -11)
    frame.stepScroll, frame.stepChild = PL.ScrollFrame(middle)
    frame.stepScroll:SetPoint("TOPLEFT", 10, -34)
    frame.stepScroll:SetPoint("BOTTOMRIGHT", -28, 52)
    frame.stepChild:SetWidth(306)

    local previous = PL.TextButton(middle, 28)
    previous:SetPoint("BOTTOMLEFT", 10, 12)
    previous:SetSize(92, 28)
    previous.text:SetText("< Prev")
    previous:SetScript("OnClick", function() if PL.db.selectedStep > 1 then PL.SelectStep(PL.db.selectedStep - 1) end end)
    local nextButton = PL.TextButton(middle, 28)
    nextButton:SetPoint("LEFT", previous, "RIGHT", 8, 0)
    nextButton:SetSize(92, 28)
    nextButton.text:SetText("Next >")
    nextButton:SetScript("OnClick", function()
        local guide = PL.SelectedGuide()
        if guide and PL.db.selectedStep < #(guide.steps or {}) then
            PL.SelectStep(PL.db.selectedStep + 1)
        end
    end)
    frame.progressText = middle:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    frame.progressText:SetPoint("RIGHT", -12, 0)
    frame.progressText:SetPoint("LEFT", nextButton, "RIGHT", 10, 0)
    frame.progressText:SetJustifyH("RIGHT")

    local right = PL.Panel(frame, PL.colors.panel)
    right:SetPoint("TOPLEFT", middle, "TOPRIGHT", 12, 0)
    right:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -18, 48)
    local rightTitle = right:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    rightTitle:SetPoint("TOPLEFT", 10, -9)
    rightTitle:SetText("Details")
    frame.completeCheck = CreateFrame("CheckButton", "ProfessionLlamaCompleteCheck", right, "UICheckButtonTemplate")
    frame.completeCheck:SetPoint("TOPRIGHT", -132, -5)
    frame.completeCheck:SetScript("OnClick", function(self)
        local guide = PL.SelectedGuide()
        if guide then
            PL.SetComplete(guide.key, PL.db.selectedStep, self:GetChecked())
            PL.Refresh()
        end
    end)
    frame.completeText = right:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    frame.completeText:SetPoint("LEFT", frame.completeCheck, "RIGHT", -2, 0)
    frame.detailScroll, frame.detailChild = PL.ScrollFrame(right)
    frame.detailScroll:SetPoint("TOPLEFT", 10, -36)
    frame.detailScroll:SetPoint("BOTTOMRIGHT", -28, 10)
    frame.detailChild:SetWidth(312)

    local footer = frame:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall")
    footer:SetPoint("BOTTOMLEFT", 18, 18)
    footer:SetText("/pl or /professionllama to toggle. Search profession names, materials, recipes, or zones.")

    local reset = PL.TextButton(frame, 28)
    reset:SetPoint("BOTTOMRIGHT", -18, 12)
    reset:SetSize(130, 28)
    reset.text:SetText("Reset Progress")
    reset:SetScript("OnClick", function()
        PL.db.completed = {}
        PL.Refresh()
        PL.Print("progress reset.")
    end)
end

function PL.Toggle()
    PL.BuildFrame()
    if PL.frame:IsShown() then
        PL.frame:Hide()
    else
        PL.frame:Show()
        PL.Refresh()
    end
end

local function help()
    PL.Print("/pl - toggle the profession guide.")
    PL.Print("/pl alchemy - open a profession directly. Works with any profession name.")
    PL.Print("/pl reset - clear completed steps.")
end

local function slash(input)
    local command = PL.Normalize(input)
    if command == "" or command == "toggle" then PL.Toggle(); return end
    if command == "help" then help(); return end
    if command == "reset" then PL.db.completed = {}; if PL.frame then PL.Refresh() end; PL.Print("progress reset."); return end
    for _, guide in ipairs(PL.guides) do
        if command == guide.key or command == PL.Normalize(guide.name) then
            PL.db.selectedProfession = guide.key
            PL.db.selectedStep = 1
            PL.BuildFrame()
            PL.frame:Show()
            PL.Refresh()
            return
        end
    end
    help()
end

local events = CreateFrame("Frame")
events:RegisterEvent("ADDON_LOADED")
events:SetScript("OnEvent", function(_, _, loadedAddon)
    if loadedAddon ~= PL.addonName then
        return
    end
    PL.InitDB()
    PL.searchText = ""
    SLASH_PROFESSIONLLAMA1 = "/pl"
    SLASH_PROFESSIONLLAMA2 = "/professionllama"
    SlashCmdList.PROFESSIONLLAMA = slash
    PL.Print("loaded. Type /pl to open.")
end)
