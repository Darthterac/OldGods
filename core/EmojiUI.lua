-- OldGods/core/EmojiUI.lua
local EmojiUI = {}
local emojiData = OldGods_Emoji.Emojis

-- Create slash command
SLASH_OLDEMOJI1 = "/emoji"
SlashCmdList["OLDEMOJI"] = function()
    if not EmojiUI.frame then
        EmojiUI:Create()
    end

    if EmojiUI.frame:IsShown() then
        EmojiUI.frame:Hide()
    else
        EmojiUI.frame:Show()
    end
end

function EmojiUI:Create()
    local frame = CreateFrame("Frame", "OldGodsEmojiFrame", UIParent, "BackdropTemplate")
    frame:SetSize(300, 400)
    frame:SetPoint("CENTER")
    frame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    })
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)

    local closeButton = CreateFrame("Button", nil, frame, "GameMenuButtonTemplate")
    closeButton:SetSize(120, 30)
    closeButton:SetPoint("BOTTOMRIGHT", frame, "BOTTOM", 119, 6)
    closeButton:SetText("Close")
    closeButton:SetNormalFontObject("GameFontNormal")
    closeButton:SetHighlightFontObject("GameFontHighlight")
    closeButton:SetScript("OnClick", function()
        frame:Hide()
    end)

    local scroll = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 10, -10)
    scroll:SetPoint("BOTTOMRIGHT", -30, 10)

    local content = CreateFrame("Frame", nil, scroll)
    scroll:SetScrollChild(content)
    content:SetSize(260, 1)

    local col, row = 0, 0
    local padding = 30
    local iconSize = 60
    local perRow = 3

    for code, texturePath in pairs(emojiData) do
        local index = (row * perRow) + col + 1

        local emojiFrame = CreateFrame("Button", nil, content)
        emojiFrame:SetSize(iconSize, iconSize)
        emojiFrame:SetPoint("TOPLEFT", col * (iconSize + padding), -row * 70)

        local tex = emojiFrame:CreateTexture(nil, "ARTWORK")
        tex:SetPoint("TOPLEFT", emojiFrame)
        tex:SetTexture(texturePath)

        emojiFrame:SetScript("OnClick", function()
            if ChatFrame1EditBox:IsShown() then
                ChatFrame1EditBox:Insert(code)
            else
                ChatFrame_OpenChat(code, DEFAULT_CHAT_FRAME)
            end
        end)

        local label = emojiFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        label:SetPoint("TOP", emojiFrame, "BOTTOM", 0, -2)
        label:SetText(code)

        col = col + 1
        if col >= perRow then
            col = 0
            row = row + 1
        end
    end

    EmojiUI.frame = frame
end
