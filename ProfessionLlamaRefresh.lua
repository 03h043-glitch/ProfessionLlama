local _, ns = ...
local PL = ns.PL

local professionButtons, stepButtons, detailLines = {}, {}, {}

local function detailLine(index)
    if detailLines[index] then
        return detailLines[index]
    end
    local line = PL.frame.detailChild:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    line:SetJustifyH("LEFT")
    line:SetJustifyV("TOP")
    line:SetWordWrap(true)
    line:SetWidth(306)
    detailLines[index] = line
    return line
end

local function addLine(index, y, text, font, color, gap)
    local line = detailLine(index)
    line:ClearAllPoints()
    line:SetPoint("TOPLEFT", PL.frame.detailChild, "TOPLEFT", 4, -y)
    line:SetWidth(306)
    line:SetFontObject(font or GameFontHighlightSmall)
    if color then
        line:SetTextColor(color[1], color[2], color[3], color[4] or 1)
    else
        line:SetTextColor(0.88, 0.88, 0.82, 1)
    end
    line:SetText(text or "")
    line:Show()
    return y + math.max(line:GetStringHeight() or 16, 14) + (gap or 8), index + 1
end

local function hideDetailFrom(index)
    for i = index, #detailLines do
        detailLines[i]:Hide()
    end
end

function PL.SelectProfession(key)
    local guide = PL.FindGuide(key)
    if not guide then
        return
    end
    PL.db.selectedProfession = guide.key
    PL.db.selectedStep = 1
    PL.Refresh()
end

function PL.SelectStep(index)
    local guide = PL.SelectedGuide()
    if guide and guide.steps[index] then
        PL.db.selectedStep = index
        PL.Refresh()
    end
end

function PL.RefreshProfessions()
    local y, visible = 0, 0
    for index, guide in ipairs(PL.guides) do
        local guideKey = guide.key
        local button = professionButtons[index] or PL.TextButton(PL.frame.professionChild, 30)
        professionButtons[index] = button
        if PL.GuideMatches(guide, PL.searchText or "") then
            visible = visible + 1
            button:ClearAllPoints()
            button:SetPoint("TOPLEFT", PL.frame.professionChild, "TOPLEFT", 0, -y)
            button:SetPoint("RIGHT", PL.frame.professionChild, "RIGHT", -4, 0)
            button.text:SetText(guide.name)
            button:SetScript("OnClick", function() PL.SelectProfession(guideKey) end)
            PL.StyleButton(button, guideKey == PL.db.selectedProfession, false)
            button:Show()
            y = y + 34
        else
            button:Hide()
        end
    end
    PL.frame.professionChild:SetHeight(math.max(y, 1))
    PL.frame.professionCount:SetText(visible .. " professions")
end

function PL.RefreshSteps()
    local guide = PL.SelectedGuide()
    if not guide then
        return
    end
    local y, visible = 0, 0
    for index, step in ipairs(guide.steps or {}) do
        local stepIndex = index
        local complete = PL.IsComplete(guide.key, stepIndex)
        local button = stepButtons[index] or PL.TextButton(PL.frame.stepChild, 36)
        stepButtons[index] = button
        if PL.StepMatches(step, PL.searchText or "") and (not PL.db.showOnlyIncomplete or not complete) then
            local range, action = PL.StepFields(step)
            visible = visible + 1
            button:ClearAllPoints()
            button:SetPoint("TOPLEFT", PL.frame.stepChild, "TOPLEFT", 0, -y)
            button:SetPoint("RIGHT", PL.frame.stepChild, "RIGHT", -4, 0)
            button.text:SetText((complete and "[x] " or "[ ] ") .. range .. "  " .. action)
            button:SetScript("OnClick", function() PL.SelectStep(stepIndex) end)
            PL.StyleButton(button, stepIndex == PL.db.selectedStep, complete)
            button:Show()
            y = y + 40
        else
            button:Hide()
        end
    end
    for index = #(guide.steps or {}) + 1, #stepButtons do
        stepButtons[index]:Hide()
    end
    PL.frame.stepChild:SetHeight(math.max(y, 1))
    PL.frame.stepCount:SetText(visible .. " visible steps")
end

function PL.RefreshDetails()
    local guide = PL.SelectedGuide()
    local step = guide and (guide.steps[PL.db.selectedStep] or guide.steps[1])
    if not step then
        return
    end
    local range, action, mats, source, notes = PL.StepFields(step)
    local y, index = 0, 1
    local done = PL.IsComplete(guide.key, PL.db.selectedStep)
    local total = #(guide.steps or {})

    PL.frame.completeCheck:SetChecked(done)
    PL.frame.completeText:SetText(done and "Completed" or "Mark this step complete")
    PL.frame.progressText:SetText(PL.CountComplete(guide) .. "/" .. total .. " done")
    PL.frame.subtitle:SetText(guide.name .. " - " .. guide.kind)

    y, index = addLine(index, y, guide.name, GameFontNormalLarge, PL.colors.accent, 4)
    y, index = addLine(index, y, guide.summary, GameFontHighlightSmall, nil, 12)
    y, index = addLine(index, y, "Selected Step", GameFontNormal, PL.colors.accent, 4)
    y, index = addLine(index, y, range .. " - " .. action, GameFontHighlight, nil, 4)
    y, index = addLine(index, y, "Materials: " .. PL.Join(mats), GameFontHighlightSmall, nil, 4)
    y, index = addLine(index, y, "Source: " .. (source or "Unknown"), GameFontHighlightSmall, nil, 4)
    y, index = addLine(index, y, "Notes: " .. (notes or ""), GameFontHighlightSmall, nil, 12)

    y, index = addLine(index, y, "Shopping List", GameFontNormal, PL.colors.accent, 4)
    for _, item in ipairs(guide.shopping or {}) do
        y, index = addLine(index, y, "- " .. item, GameFontHighlightSmall, nil, 2)
    end

    y = y + 8
    y, index = addLine(index, y, "Route Tips", GameFontNormal, PL.colors.accent, 4)
    for _, tip in ipairs(guide.tips or {}) do
        y, index = addLine(index, y, "- " .. tip, GameFontHighlightSmall, nil, 2)
    end

    hideDetailFrom(index)
    PL.frame.detailChild:SetHeight(math.max(y + 20, 1))
end

function PL.Refresh()
    local guide = PL.SelectedGuide()
    if not guide then
        return
    end
    if not guide.steps[PL.db.selectedStep] then
        PL.db.selectedStep = 1
    end
    PL.RefreshProfessions()
    PL.RefreshSteps()
    PL.RefreshDetails()
end
