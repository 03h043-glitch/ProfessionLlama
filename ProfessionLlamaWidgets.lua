local _, ns = ...
local PL = ns.PL

function PL.ApplyBackdrop(frame, color)
    if not frame or not frame.SetBackdrop then
        return
    end
    frame:SetBackdrop(PL.backdrop)
    frame:SetBackdropColor(color[1], color[2], color[3], color[4])
    frame:SetBackdropBorderColor(PL.colors.border[1], PL.colors.border[2], PL.colors.border[3], PL.colors.border[4])
end

function PL.SetButtonColor(button, color)
    if button and button.SetBackdropColor then
        button:SetBackdropColor(color[1], color[2], color[3], color[4])
    end
end

function PL.Panel(parent, color)
    local panel = CreateFrame("Frame", nil, parent, BackdropTemplateMixin and "BackdropTemplate" or nil)
    PL.ApplyBackdrop(panel, color or PL.colors.panel)
    return panel
end

function PL.TextButton(parent, height)
    local button = CreateFrame("Button", nil, parent, BackdropTemplateMixin and "BackdropTemplate" or nil)
    button:SetHeight(height or 28)
    PL.ApplyBackdrop(button, PL.colors.soft)

    button.text = button:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    button.text:SetPoint("LEFT", 8, 0)
    button.text:SetPoint("RIGHT", -8, 0)
    button.text:SetJustifyH("LEFT")
    button.text:SetWordWrap(false)

    button:SetScript("OnEnter", function(self)
        if not self.isSelected then
            PL.SetButtonColor(self, PL.colors.hover)
        end
    end)
    button:SetScript("OnLeave", function(self)
        if self.isSelected then
            PL.SetButtonColor(self, PL.colors.selected)
        elseif self.isComplete then
            PL.SetButtonColor(self, PL.colors.complete)
        else
            PL.SetButtonColor(self, PL.colors.soft)
        end
    end)
    return button
end

function PL.StyleButton(button, selected, complete)
    button.isSelected = selected
    button.isComplete = complete
    if selected then
        PL.SetButtonColor(button, PL.colors.selected)
        button:SetBackdropBorderColor(PL.colors.accent[1], PL.colors.accent[2], PL.colors.accent[3], PL.colors.accent[4])
    elseif complete then
        PL.SetButtonColor(button, PL.colors.complete)
        button:SetBackdropBorderColor(0.18, 0.35, 0.22, 1)
    else
        PL.SetButtonColor(button, PL.colors.soft)
        button:SetBackdropBorderColor(PL.colors.border[1], PL.colors.border[2], PL.colors.border[3], PL.colors.border[4])
    end
end

function PL.ScrollFrame(parent)
    local scroll = CreateFrame("ScrollFrame", nil, parent, "UIPanelScrollFrameTemplate")
    local child = CreateFrame("Frame", nil, scroll)
    child:SetSize(1, 1)
    scroll:SetScrollChild(child)
    return scroll, child
end
