-- OldGods/core/Emoji.lua
local Emoji = {}

-- Icon dictionary
Emoji.Emojis = {
    [":)"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\smile.tga",
    [":("] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\sad.tga",
    [";)"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\wink.tga",
    [":o"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\oh.tga",
    ["B)"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\cool.tga",
    [":$"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\catshy.tga",
    [":p"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\tonguep.tga",
    ["o7"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\salute.tga",
    ["nyx"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\nyx.tga",
    ["<3"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\heart.tga",
    ["actually"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\actually.tga",
    ["annoying"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Annoy.tga",
    ["blush"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\blush_embarrassed.tga",
    ["clown"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\clown.tga",
    ["coffee"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\coffee.tga",
    ["cool"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\cool.tga",
    ["crying"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\cry.tga",
    ["cry"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\cry.tga",
    ["facepalm"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\facepalm.tga",
    ["imagine"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\gay_imagine.tga",
    ["grats"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\grats.tga",
    ["love"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\heart.tga",
    ["lol"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\lol.tga",
    ["nerd"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\nerd.tga",
    ["rofl"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\rofl.tga",
    ["sad"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\sad.tga",
    ["salute"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\salute.tga",
    ["shy"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\shy.tga",
    ["sigh"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\sigh.tga",
    ["smart"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\smart.tga",
    ["stress"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\stress.tga",
    ["think"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\think.tga",
    ["thinking"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\think.tga",
    ["tired"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\tired.tga",
    ["wtf"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\wtf.tga",
    ["Pepe_noted"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_noted.tga",
    ["Pepe_shrug"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_shrug.tga",
    ["Pepe_Cri"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_Cri.tga",
    ["Pepe_happy"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_happy.tga",
    ["Pepe_hi"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_hi.tga",
    ["Pepe_lgbt"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_lgbt.tga",
    ["Pepe_mad"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_mad.tga",
    ["Pepe_pray"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_pray.tga",
    ["Pepe_sadge"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_sadge.tga",
    ["Pepe_sus"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_sus.tga",
    ["Pepe_thnk"] = "Interface\\AddOns\\OldGods\\Textures\\emoji\\Pepe_thnk.tga",
 }

-- Replacement function
function Emoji:ReplaceEmojis(msg)
    for code, texture in pairs(self.Emojis) do
        local escaped = code:gsub("([^%w])", "%%%1") -- escape non-word characters
        msg = msg:gsub(escaped, "|T" .. texture .. ":22|t")
    end
    return msg
end

-- Chat message filter
local function EmojiFilter(self, event, msg, author, ...)
    msg = Emoji:ReplaceEmojis(msg)
    return false, msg, author, ...
end

-- Register the filter
function Emoji:Enable()
    local events = {
        "CHAT_MSG_GUILD",
        "CHAT_MSG_OFFICER",
        "CHAT_MSG_PARTY",
        "CHAT_MSG_RAID",
        "CHAT_MSG_SAY",
        "CHAT_MSG_YELL",
        "CHAT_MSG_WHISPER",
        "CHAT_MSG_CHANNEL",
    }

    for _, evt in ipairs(events) do
        ChatFrame_AddMessageEventFilter(evt, EmojiFilter)
    end
end

OldGods_Emoji = Emoji
