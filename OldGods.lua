--OldGods 2.1.0 'whos your daddy¿'
-- I f%%%ing love @uwu_underground
-- yeah the addon is one pure lua/wow api file no libs \_(;.;)_/ many whelps handle it!

--#region Global savedvariables
OldGodsDB = OldGodsDB or {}
OGsavedChat = OGsavedChat or {}
OldGodsSavedColors = OldGodsSavedColors or {}
OG_TrackGuildRoster = OG_TrackGuildRoster or {}
OG_EncryptedNotes = OG_EncryptedNotes or {}
OG_AfkMsg = OG_AfkMsg or {}
OldGods_BadMailDB = OldGods_BadMailDB or {}
OldGodsGuildActivity = OldGodsGuildActivity or {}
OldGods_AutoReturnEnabled = OldGods_AutoReturnEnabled or false
--#endregion Global savedvariables

--[[
  ByteFilter Patterns generated from LDNOOBW
  Source: https://github.com/LDNOOBW/List-of-Dirty-Naughty-Obscene-and-Otherwise-Bad-Words
  License: CC BY 4.0 - https://creativecommons.org/licenses/by/4.0/
  This list was converted into byte-only format for use in the OldGods addon.
  Raw words are excluded from the final addon source to maintain ethical handling.
--]]
local ByteFilter = {}

ByteFilter.BadWordBytePatterns = {
    { 50,  103, 49,  99 },
    { 50,  32,  103, 105, 114, 108, 115, 32,  49,  32,  99,  117, 112 },
    { 97,  99,  114, 111, 116, 111, 109, 111, 112, 104, 105, 108, 105, 97 },
    { 97,  108, 97,  98,  97,  109, 97,  32,  104, 111, 116, 32,  112, 111, 99,  107, 101, 116 },
    { 97,  108, 97,  115, 107, 97,  110, 32,  112, 105, 112, 101, 108, 105, 110, 101 },
    { 97,  110, 97,  108 },
    { 97,  110, 105, 108, 105, 110, 103, 117, 115 },
    { 97,  110, 117, 115 },
    { 97,  112, 101, 115, 104, 105, 116 },
    { 97,  114, 115, 101, 104, 111, 108, 101 },
    { 97,  115, 115 },
    { 97,  115, 115, 104, 111, 108, 101 },
    { 97,  115, 115, 109, 117, 110, 99,  104 },
    { 97,  117, 116, 111, 32,  101, 114, 111, 116, 105, 99 },
    { 97,  117, 116, 111, 101, 114, 111, 116, 105, 99 },
    { 98,  97,  98,  101, 108, 97,  110, 100 },
    { 98,  97,  98,  121, 32,  98,  97,  116, 116, 101, 114 },
    { 98,  97,  98,  121, 32,  106, 117, 105, 99,  101 },
    { 98,  97,  108, 108, 32,  103, 97,  103 },
    { 98,  97,  108, 108, 32,  103, 114, 97,  118, 121 },
    { 98,  97,  108, 108, 32,  107, 105, 99,  107, 105, 110, 103 },
    { 98,  97,  108, 108, 32,  108, 105, 99,  107, 105, 110, 103 },
    { 98,  97,  108, 108, 32,  115, 97,  99,  107 },
    { 98,  97,  108, 108, 32,  115, 117, 99,  107, 105, 110, 103 },
    { 98,  97,  110, 103, 98,  114, 111, 115 },
    { 98,  97,  110, 103, 98,  117, 115 },
    { 98,  97,  114, 101, 98,  97,  99,  107 },
    { 98,  97,  114, 101, 108, 121, 32,  108, 101, 103, 97,  108 },
    { 98,  97,  114, 101, 110, 97,  107, 101, 100 },
    { 98,  97,  115, 116, 97,  114, 100 },
    { 98,  97,  115, 116, 97,  114, 100, 111 },
    { 98,  97,  115, 116, 105, 110, 97,  100, 111 },
    { 98,  98,  119 },
    { 98,  100, 115, 109 },
    { 98,  101, 97,  110, 101, 114 },
    { 98,  101, 97,  110, 101, 114, 115 },
    { 98,  101, 97,  118, 101, 114, 32,  99,  108, 101, 97,  118, 101, 114 },
    { 98,  101, 97,  118, 101, 114, 32,  108, 105, 112, 115 },
    { 98,  101, 97,  115, 116, 105, 97,  108, 105, 116, 121 },
    { 98,  101, 115, 116, 105, 97,  108, 105, 116, 121 },
    { 98,  105, 103, 32,  98,  108, 97,  99,  107 },
    { 98,  105, 103, 32,  98,  114, 101, 97,  115, 116, 115 },
    { 98,  105, 103, 32,  107, 110, 111, 99,  107, 101, 114, 115 },
    { 98,  105, 103, 32,  116, 105, 116, 115 },
    { 98,  105, 109, 98,  111, 115 },
    { 98,  105, 114, 100, 108, 111, 99,  107 },
    { 98,  105, 116, 99,  104 },
    { 98,  105, 116, 99,  104, 101, 115 },
    { 98,  108, 97,  99,  107, 32,  99,  111, 99,  107 },
    { 98,  108, 111, 110, 100, 101, 32,  97,  99,  116, 105, 111, 110 },
    { 98,  108, 111, 110, 100, 101, 32,  111, 110, 32,  98,  108, 111, 110, 100, 101, 32,  97,  99, 116, 105, 111, 110 },
    { 98,  108, 111, 119, 106, 111, 98 },
    { 98,  108, 111, 119, 32,  106, 111, 98 },
    { 98,  108, 111, 119, 32,  121, 111, 117, 114, 32,  108, 111, 97,  100 },
    { 98,  108, 117, 101, 32,  119, 97,  102, 102, 108, 101 },
    { 98,  108, 117, 109, 112, 107, 105, 110 },
    { 98,  111, 108, 108, 111, 99,  107, 115 },
    { 98,  111, 110, 100, 97,  103, 101 },
    { 98,  111, 110, 101, 114 },
    { 98,  111, 111, 98 },
    { 98,  111, 111, 98,  115 },
    { 98,  111, 111, 116, 121, 32,  99,  97,  108, 108 },
    { 98,  114, 111, 119, 110, 32,  115, 104, 111, 119, 101, 114, 115 },
    { 98,  114, 117, 110, 101, 116, 116, 101, 32,  97,  99,  116, 105, 111, 110 },
    { 98,  117, 107, 107, 97,  107, 101 },
    { 98,  117, 108, 108, 100, 121, 107, 101 },
    { 98,  117, 108, 108, 101, 116, 32,  118, 105, 98,  101 },
    { 98,  117, 108, 108, 115, 104, 105, 116 },
    { 98,  117, 110, 103, 32,  104, 111, 108, 101 },
    { 98,  117, 110, 103, 104, 111, 108, 101 },
    { 98,  117, 115, 116, 121 },
    { 98,  117, 116, 116 },
    { 98,  117, 116, 116, 99,  104, 101, 101, 107, 115 },
    { 98,  117, 116, 116, 104, 111, 108, 101 },
    { 99,  97,  109, 101, 108, 32,  116, 111, 101 },
    { 99,  97,  109, 103, 105, 114, 108 },
    { 99,  97,  109, 115, 108, 117, 116 },
    { 99,  97,  109, 119, 104, 111, 114, 101 },
    { 99,  97,  114, 112, 101, 116, 32,  109, 117, 110, 99,  104, 101, 114 },
    { 99,  97,  114, 112, 101, 116, 109, 117, 110, 99,  104, 101, 114 },
    { 99,  104, 111, 99,  111, 108, 97,  116, 101, 32,  114, 111, 115, 101, 98,  117, 100, 115 },
    { 99,  105, 97,  108, 105, 115 },
    { 99,  105, 114, 99,  108, 101, 106, 101, 114, 107 },
    { 99,  108, 101, 118, 101, 108, 97,  110, 100, 32,  115, 116, 101, 97,  109, 101, 114 },
    { 99,  108, 105, 116 },
    { 99,  108, 105, 116, 111, 114, 105, 115 },
    { 99,  108, 111, 118, 101, 114, 32,  99,  108, 97,  109, 112, 115 },
    { 99,  108, 117, 115, 116, 101, 114, 102, 117, 99,  107 },
    { 99,  111, 99,  107 },
    { 99,  111, 99,  107, 115 },
    { 99,  111, 112, 114, 111, 108, 97,  103, 110, 105, 97 },
    { 99,  111, 112, 114, 111, 112, 104, 105, 108, 105, 97 },
    { 99,  111, 114, 110, 104, 111, 108, 101 },
    { 99,  111, 111, 110 },
    { 99,  111, 111, 110, 115 },
    { 99,  114, 101, 97,  109, 112, 105, 101 },
    { 99,  117, 109 },
    { 99,  117, 109, 109, 105, 110, 103 },
    { 99,  117, 109, 115, 104, 111, 116 },
    { 99,  117, 109, 115, 104, 111, 116, 115 },
    { 99,  117, 110, 110, 105, 108, 105, 110, 103, 117, 115 },
    { 99,  117, 110, 116 },
    { 100, 97,  114, 107, 105, 101 },
    { 100, 97,  116, 101, 32,  114, 97,  112, 101 },
    { 100, 97,  116, 101, 114, 97,  112, 101 },
    { 100, 101, 101, 112, 32,  116, 104, 114, 111, 97,  116 },
    { 100, 101, 101, 112, 116, 104, 114, 111, 97,  116 },
    { 100, 101, 110, 100, 114, 111, 112, 104, 105, 108, 105, 97 },
    { 100, 105, 99,  107 },
    { 100, 105, 108, 100, 111 },
    { 100, 105, 110, 103, 108, 101, 98,  101, 114, 114, 121 },
    { 100, 105, 110, 103, 108, 101, 98,  101, 114, 114, 105, 101, 115 },
    { 100, 105, 114, 116, 121, 32,  112, 105, 108, 108, 111, 119, 115 },
    { 100, 105, 114, 116, 121, 32,  115, 97,  110, 99,  104, 101, 122 },
    { 100, 111, 103, 103, 105, 101, 32,  115, 116, 121, 108, 101 },
    { 100, 111, 103, 103, 105, 101, 115, 116, 121, 108, 101 },
    { 100, 111, 103, 103, 121, 32,  115, 116, 121, 108, 101 },
    { 100, 111, 103, 103, 121, 115, 116, 121, 108, 101 },
    { 100, 111, 103, 32,  115, 116, 121, 108, 101 },
    { 100, 111, 108, 99,  101, 116, 116 },
    { 100, 111, 109, 105, 110, 97,  116, 105, 111, 110 },
    { 100, 111, 109, 105, 110, 97,  116, 114, 105, 120 },
    { 100, 111, 109, 109, 101, 115 },
    { 100, 111, 110, 107, 101, 121, 32,  112, 117, 110, 99,  104 },
    { 100, 111, 117, 98,  108, 101, 32,  100, 111, 110, 103 },
    { 100, 111, 117, 98,  108, 101, 32,  112, 101, 110, 101, 116, 114, 97,  116, 105, 111, 110 },
    { 100, 112, 32,  97,  99,  116, 105, 111, 110 },
    { 100, 114, 121, 32,  104, 117, 109, 112 },
    { 100, 118, 100, 97 },
    { 101, 97,  116, 32,  109, 121, 32,  97,  115, 115 },
    { 101, 99,  99,  104, 105 },
    { 101, 106, 97,  99,  117, 108, 97,  116, 105, 111, 110 },
    { 101, 114, 111, 116, 105, 99 },
    { 101, 114, 111, 116, 105, 115, 109 },
    { 101, 115, 99,  111, 114, 116 },
    { 101, 117, 110, 117, 99,  104 },
    { 102, 97,  103 },
    { 102, 97,  103, 103, 111, 116 },
    { 102, 101, 99,  97,  108 },
    { 102, 101, 108, 99,  104 },
    { 102, 101, 108, 108, 97,  116, 105, 111 },
    { 102, 101, 108, 116, 99,  104 },
    { 102, 101, 109, 97,  108, 101, 32,  115, 113, 117, 105, 114, 116, 105, 110, 103 },
    { 102, 101, 109, 100, 111, 109 },
    { 102, 105, 103, 103, 105, 110, 103 },
    { 102, 105, 110, 103, 101, 114, 98,  97,  110, 103 },
    { 102, 105, 110, 103, 101, 114, 105, 110, 103 },
    { 102, 105, 115, 116, 105, 110, 103 },
    { 102, 111, 111, 116, 32,  102, 101, 116, 105, 115, 104 },
    { 102, 111, 111, 116, 106, 111, 98 },
    { 102, 114, 111, 116, 116, 105, 110, 103 },
    { 102, 117, 99,  107 },
    { 102, 117, 99,  107, 32,  98,  117, 116, 116, 111, 110, 115 },
    { 102, 117, 99,  107, 105, 110 },
    { 102, 117, 99,  107, 105, 110, 103 },
    { 102, 117, 99,  107, 116, 97,  114, 100, 115 },
    { 102, 117, 100, 103, 101, 32,  112, 97,  99,  107, 101, 114 },
    { 102, 117, 100, 103, 101, 112, 97,  99,  107, 101, 114 },
    { 102, 117, 116, 97,  110, 97,  114, 105 },
    { 103, 97,  110, 103, 98,  97,  110, 103 },
    { 103, 97,  110, 103, 32,  98,  97,  110, 103 },
    { 103, 97,  121, 32,  115, 101, 120 },
    { 103, 101, 110, 105, 116, 97,  108, 115 },
    { 103, 105, 97,  110, 116, 32,  99,  111, 99,  107 },
    { 103, 105, 114, 108, 32,  111, 110 },
    { 103, 105, 114, 108, 32,  111, 110, 32,  116, 111, 112 },
    { 103, 105, 114, 108, 115, 32,  103, 111, 110, 101, 32,  119, 105, 108, 100 },
    { 103, 111, 97,  116, 99,  120 },
    { 103, 111, 97,  116, 115, 101 },
    { 103, 111, 100, 32,  100, 97,  109, 110 },
    { 103, 111, 107, 107, 117, 110 },
    { 103, 111, 108, 100, 101, 110, 32,  115, 104, 111, 119, 101, 114 },
    { 103, 111, 111, 100, 112, 111, 111, 112 },
    { 103, 111, 111, 32,  103, 105, 114, 108 },
    { 103, 111, 114, 101, 103, 97,  115, 109 },
    { 103, 114, 111, 112, 101 },
    { 103, 114, 111, 117, 112, 32,  115, 101, 120 },
    { 103, 45,  115, 112, 111, 116 },
    { 103, 117, 114, 111 },
    { 104, 97,  110, 100, 32,  106, 111, 98 },
    { 104, 97,  110, 100, 106, 111, 98 },
    { 104, 97,  114, 100, 32,  99,  111, 114, 101 },
    { 104, 97,  114, 100, 99,  111, 114, 101 },
    { 104, 101, 110, 116, 97,  105 },
    { 104, 111, 109, 111, 101, 114, 111, 116, 105, 99 },
    { 104, 111, 110, 107, 101, 121 },
    { 104, 111, 111, 107, 101, 114 },
    { 104, 111, 114, 110, 121 },
    { 104, 111, 116, 32,  99,  97,  114, 108 },
    { 104, 111, 116, 32,  99,  104, 105, 99,  107 },
    { 104, 111, 119, 32,  116, 111, 32,  107, 105, 108, 108 },
    { 104, 111, 119, 32,  116, 111, 32,  109, 117, 114, 100, 101, 114 },
    { 104, 117, 103, 101, 32,  102, 97,  116 },
    { 104, 117, 109, 112, 105, 110, 103 },
    { 105, 110, 99,  101, 115, 116 },
    { 105, 110, 116, 101, 114, 99,  111, 117, 114, 115, 101 },
    { 106, 97,  99,  107, 32,  111, 102, 102 },
    { 106, 97,  105, 108, 32,  98,  97,  105, 116 },
    { 106, 97,  105, 108, 98,  97,  105, 116 },
    { 106, 101, 108, 108, 121, 32,  100, 111, 110, 117, 116 },
    { 106, 101, 114, 107, 32,  111, 102, 102 },
    { 106, 105, 103, 97,  98,  111, 111 },
    { 106, 105, 103, 103, 97,  98,  111, 111 },
    { 106, 105, 103, 103, 101, 114, 98,  111, 111 },
    { 106, 105, 122, 122 },
    { 106, 117, 103, 103, 115 },
    { 107, 105, 107, 101 },
    { 107, 105, 110, 98,  97,  107, 117 },
    { 107, 105, 110, 107, 115, 116, 101, 114 },
    { 107, 105, 110, 107, 121 },
    { 107, 110, 111, 98,  98,  105, 110, 103 },
    { 108, 101, 97,  116, 104, 101, 114, 32,  114, 101, 115, 116, 114, 97,  105, 110, 116 },
    { 108, 101, 97,  116, 104, 101, 114, 32,  115, 116, 114, 97,  105, 103, 104, 116, 32,  106, 97, 99,  107, 101, 116 },
    { 108, 101, 109, 111, 110, 32,  112, 97,  114, 116, 121 },
    { 108, 105, 118, 101, 115, 101, 120 },
    { 108, 111, 108, 105, 116, 97 },
    { 108, 111, 118, 101, 109, 97,  107, 105, 110, 103 },
    { 109, 97,  107, 101, 32,  109, 101, 32,  99,  111, 109, 101 },
    { 109, 97,  108, 101, 32,  115, 113, 117, 105, 114, 116, 105, 110, 103 },
    { 109, 97,  115, 116, 117, 114, 98,  97,  116, 101 },
    { 109, 97,  115, 116, 117, 114, 98,  97,  116, 105, 110, 103 },
    { 109, 97,  115, 116, 117, 114, 98,  97,  116, 105, 111, 110 },
    { 109, 101, 110, 97,  103, 101, 32,  97,  32,  116, 114, 111, 105, 115 },
    { 109, 105, 108, 102 },
    { 109, 105, 115, 115, 105, 111, 110, 97,  114, 121, 32,  112, 111, 115, 105, 116, 105, 111, 110 },
    { 109, 111, 110, 103 },
    { 109, 111, 116, 104, 101, 114, 102, 117, 99,  107, 101, 114 },
    { 109, 111, 117, 110, 100, 32,  111, 102, 32,  118, 101, 110, 117, 115 },
    { 109, 114, 32,  104, 97,  110, 100, 115 },
    { 109, 117, 102, 102, 32,  100, 105, 118, 101, 114 },
    { 109, 117, 102, 102, 100, 105, 118, 105, 110, 103 },
    { 110, 97,  109, 98,  108, 97 },
    { 110, 97,  119, 97,  115, 104, 105 },
    { 110, 101, 103, 114, 111 },
    { 110, 101, 111, 110, 97,  122, 105 },
    { 110, 105, 103, 103, 97 },
    { 110, 105, 103, 103, 101, 114 },
    { 110, 105, 103, 32,  110, 111, 103 },
    { 110, 105, 109, 112, 104, 111, 109, 97,  110, 105, 97 },
    { 110, 105, 112, 112, 108, 101 },
    { 110, 105, 112, 112, 108, 101, 115 },
    { 110, 115, 102, 119 },
    { 110, 115, 102, 119, 32,  105, 109, 97,  103, 101, 115 },
    { 110, 117, 100, 101 },
    { 110, 117, 100, 105, 116, 121 },
    { 110, 117, 116, 116, 101, 110 },
    { 110, 121, 109, 112, 104, 111 },
    { 110, 121, 109, 112, 104, 111, 109, 97,  110, 105, 97 },
    { 111, 99,  116, 111, 112, 117, 115, 115, 121 },
    { 111, 109, 111, 114, 97,  115, 104, 105 },
    { 111, 110, 101, 32,  99,  117, 112, 32,  116, 119, 111, 32,  103, 105, 114, 108, 115 },
    { 111, 110, 101, 32,  103, 117, 121, 32,  111, 110, 101, 32,  106, 97,  114 },
    { 111, 114, 103, 97,  115, 109 },
    { 111, 114, 103, 121 },
    { 112, 97,  101, 100, 111, 112, 104, 105, 108, 101 },
    { 112, 97,  107, 105 },
    { 112, 97,  110, 116, 105, 101, 115 },
    { 112, 97,  110, 116, 121 },
    { 112, 101, 100, 111, 98,  101, 97,  114 },
    { 112, 101, 100, 111, 112, 104, 105, 108, 101 },
    { 112, 101, 103, 103, 105, 110, 103 },
    { 112, 101, 110, 105, 115 },
    { 112, 104, 111, 110, 101, 32,  115, 101, 120 },
    { 112, 105, 101, 99,  101, 32,  111, 102, 32,  115, 104, 105, 116 },
    { 112, 105, 107, 101, 121 },
    { 112, 105, 115, 115, 105, 110, 103 },
    { 112, 105, 115, 115, 32,  112, 105, 103 },
    { 112, 105, 115, 115, 112, 105, 103 },
    { 112, 108, 97,  121, 98,  111, 121 },
    { 112, 108, 101, 97,  115, 117, 114, 101, 32,  99,  104, 101, 115, 116 },
    { 112, 111, 108, 101, 32,  115, 109, 111, 107, 101, 114 },
    { 112, 111, 110, 121, 112, 108, 97,  121 },
    { 112, 111, 111, 102 },
    { 112, 111, 111, 110 },
    { 112, 111, 111, 110, 116, 97,  110, 103 },
    { 112, 117, 110, 97,  110, 121 },
    { 112, 111, 111, 112, 32,  99,  104, 117, 116, 101 },
    { 112, 111, 111, 112, 99,  104, 117, 116, 101 },
    { 112, 111, 114, 110 },
    { 112, 111, 114, 110, 111 },
    { 112, 111, 114, 110, 111, 103, 114, 97,  112, 104, 121 },
    { 112, 114, 105, 110, 99,  101, 32,  97,  108, 98,  101, 114, 116, 32,  112, 105, 101, 114, 99, 105, 110, 103 },
    { 112, 116, 104, 99 },
    { 112, 117, 98,  101, 115 },
    { 112, 117, 115, 115, 121 },
    { 113, 117, 101, 97,  102 },
    { 113, 117, 101, 101, 102 },
    { 113, 117, 105, 109 },
    { 114, 97,  103, 104, 101, 97,  100 },
    { 114, 97,  103, 105, 110, 103, 32,  98,  111, 110, 101, 114 },
    { 114, 97,  112, 101 },
    { 114, 97,  112, 105, 110, 103 },
    { 114, 97,  112, 105, 115, 116 },
    { 114, 101, 99,  116, 117, 109 },
    { 114, 101, 118, 101, 114, 115, 101, 32,  99,  111, 119, 103, 105, 114, 108 },
    { 114, 105, 109, 106, 111, 98 },
    { 114, 105, 109, 109, 105, 110, 103 },
    { 114, 111, 115, 121, 32,  112, 97,  108, 109 },
    { 114, 111, 115, 121, 32,  112, 97,  108, 109, 32,  97,  110, 100, 32,  104, 101, 114, 32,  53, 32,  115, 105, 115, 116, 101, 114, 115 },
    { 114, 117, 115, 116, 121, 32,  116, 114, 111, 109, 98,  111, 110, 101 },
    { 115, 97,  100, 105, 115, 109 },
    { 115, 97,  110, 116, 111, 114, 117, 109 },
    { 115, 99,  97,  116 },
    { 115, 99,  104, 108, 111, 110, 103 },
    { 115, 99,  105, 115, 115, 111, 114, 105, 110, 103 },
    { 115, 101, 109, 101, 110 },
    { 115, 101, 120 },
    { 115, 101, 120, 99,  97,  109 },
    { 115, 101, 120, 111 },
    { 115, 101, 120, 121 },
    { 115, 101, 120, 117, 97,  108 },
    { 115, 101, 120, 117, 97,  108, 108, 121 },
    { 115, 101, 120, 117, 97,  108, 105, 116, 121 },
    { 115, 104, 97,  118, 101, 100, 32,  98,  101, 97,  118, 101, 114 },
    { 115, 104, 97,  118, 101, 100, 32,  112, 117, 115, 115, 121 },
    { 115, 104, 101, 109, 97,  108, 101 },
    { 115, 104, 105, 98,  97,  114, 105 },
    { 115, 104, 105, 116 },
    { 115, 104, 105, 116, 98,  108, 105, 109, 112 },
    { 115, 104, 105, 116, 116, 121 },
    { 115, 104, 111, 116, 97 },
    { 115, 104, 114, 105, 109, 112, 105, 110, 103 },
    { 115, 107, 101, 101, 116 },
    { 115, 108, 97,  110, 116, 101, 121, 101 },
    { 115, 108, 117, 116 },
    { 115, 38,  109 },
    { 115, 109, 117, 116 },
    { 115, 110, 97,  116, 99,  104 },
    { 115, 110, 111, 119, 98,  97,  108, 108, 105, 110, 103 },
    { 115, 111, 100, 111, 109, 105, 122, 101 },
    { 115, 111, 100, 111, 109, 121 },
    { 115, 112, 97,  115, 116, 105, 99 },
    { 115, 112, 105, 99 },
    { 115, 112, 108, 111, 111, 103, 101 },
    { 115, 112, 108, 111, 111, 103, 101, 32,  109, 111, 111, 115, 101 },
    { 115, 112, 111, 111, 103, 101 },
    { 115, 112, 114, 101, 97,  100, 32,  108, 101, 103, 115 },
    { 115, 112, 117, 110, 107 },
    { 115, 116, 114, 97,  112, 32,  111, 110 },
    { 115, 116, 114, 97,  112, 111, 110 },
    { 115, 116, 114, 97,  112, 112, 97,  100, 111 },
    { 115, 116, 114, 105, 112, 32,  99,  108, 117, 98 },
    { 115, 116, 121, 108, 101, 32,  100, 111, 103, 103, 121 },
    { 115, 117, 99,  107 },
    { 115, 117, 99,  107, 115 },
    { 115, 117, 105, 99,  105, 100, 101, 32,  103, 105, 114, 108, 115 },
    { 115, 117, 108, 116, 114, 121, 32,  119, 111, 109, 101, 110 },
    { 115, 119, 97,  115, 116, 105, 107, 97 },
    { 115, 119, 105, 110, 103, 101, 114 },
    { 116, 97,  105, 110, 116, 101, 100, 32,  108, 111, 118, 101 },
    { 116, 97,  115, 116, 101, 32,  109, 121 },
    { 116, 101, 97,  32,  98,  97,  103, 103, 105, 110, 103 },
    { 116, 104, 114, 101, 101, 115, 111, 109, 101 },
    { 116, 104, 114, 111, 97,  116, 105, 110, 103 },
    { 116, 104, 117, 109, 98,  122, 105, 108, 108, 97 },
    { 116, 105, 101, 100, 32,  117, 112 },
    { 116, 105, 103, 104, 116, 32,  119, 104, 105, 116, 101 },
    { 116, 105, 116 },
    { 116, 105, 116, 115 },
    { 116, 105, 116, 116, 105, 101, 115 },
    { 116, 105, 116, 116, 121 },
    { 116, 111, 110, 103, 117, 101, 32,  105, 110, 32,  97 },
    { 116, 111, 112, 108, 101, 115, 115 },
    { 116, 111, 115, 115, 101, 114 },
    { 116, 111, 119, 101, 108, 104, 101, 97,  100 },
    { 116, 114, 97,  110, 110, 121 },
    { 116, 114, 105, 98,  97,  100, 105, 115, 109 },
    { 116, 117, 98,  32,  103, 105, 114, 108 },
    { 116, 117, 98,  103, 105, 114, 108 },
    { 116, 117, 115, 104, 121 },
    { 116, 119, 97,  116 },
    { 116, 119, 105, 110, 107 },
    { 116, 119, 105, 110, 107, 105, 101 },
    { 116, 119, 111, 32,  103, 105, 114, 108, 115, 32,  111, 110, 101, 32,  99,  117, 112 },
    { 117, 110, 100, 114, 101, 115, 115, 105, 110, 103 },
    { 117, 112, 115, 107, 105, 114, 116 },
    { 117, 114, 101, 116, 104, 114, 97,  32,  112, 108, 97,  121 },
    { 117, 114, 111, 112, 104, 105, 108, 105, 97 },
    { 118, 97,  103, 105, 110, 97 },
    { 118, 101, 110, 117, 115, 32,  109, 111, 117, 110, 100 },
    { 118, 105, 97,  103, 114, 97 },
    { 118, 105, 98,  114, 97,  116, 111, 114 },
    { 118, 105, 111, 108, 101, 116, 32,  119, 97,  110, 100 },
    { 118, 111, 114, 97,  114, 101, 112, 104, 105, 108, 105, 97 },
    { 118, 111, 121, 101, 117, 114 },
    { 118, 111, 121, 101, 117, 114, 119, 101, 98 },
    { 118, 111, 121, 117, 101, 114 },
    { 118, 117, 108, 118, 97 },
    { 119, 97,  110, 107 },
    { 119, 101, 116, 98,  97,  99,  107 },
    { 119, 101, 116, 32,  100, 114, 101, 97,  109 },
    { 119, 104, 105, 116, 101, 32,  112, 111, 119, 101, 114 },
    { 119, 104, 111, 114, 101 },
    { 119, 111, 114, 108, 100, 115, 101, 120 },
    { 119, 114, 97,  112, 112, 105, 110, 103, 32,  109, 101, 110 },
    { 119, 114, 105, 110, 107, 108, 101, 100, 32,  115, 116, 97,  114, 102, 105, 115, 104 },
    { 120, 120 },
    { 120, 120, 120 },
    { 121, 97,  111, 105 },
    { 121, 101, 108, 108, 111, 119, 32,  115, 104, 111, 119, 101, 114, 115 },
    { 121, 105, 102, 102, 121 },
    { 122, 111, 111, 112, 104, 105, 108, 105, 97 },
} -- The filter table from ByteFilter.lua *LDNOOBW*

--#region Global Tables
OG_ChatMessageTable = {}
OG_TooltipInfoTable = {}

--#region Global table OG_Themes
local resetVertex = { r = 1, g = 1, b = 1, a = 1 }
OG_Themes = {
    ["Your Custom Theme"] = { -- Custom theme default when user resets theme or first time addon loads - the reset function nils the keys,values in the OldGodsSavedColors SavedVariable
        dropDownIcon = "|T1455894:18:18:0|t",
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        tile = false,
        tileSize = 0,
        edgeSize = 3,
        insets = {
            left = 1,
            right = 1,
            top = 1,
            bottom = 1
        },
        backgroundColor = { r = 0.659, g = 0.659, b = 0.659, a = 0.75 },
        borderColor = { r = 1, g = 1, b = 1, a = 1 }, --pure red
        thescrlfrm = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            myAtlas = "jailerstower-scenario-TrackerHeader",
            myAtlasVertex = resetVertex,
            myAtlasTexCoord = { 0, 1, 0, 1 },
            --myAtlasSetRotation = math.pi/2,
            scrollFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollThumbTexture = 2022762,
            scrollThumbVertex = resetVertex,
            scrollThumbSize = { width = 18, height = 18 },
        },
        theStefak = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 2,
            insets = {
                left = 1,
                right = 1,
                top = 1,
                bottom = 1
            },
            cristaFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            cristaFrameBorderColor = { r = 1, g = 1, b = 1, a = 1 }, -- Dark Grey Orange rgb01(0.639, 0.565, 0.506)
        },
        theAtari = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            isEditBoxBG = { r = 0, g = 0, b = 0, a = 1 },
            isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 },
        },
        titleColor = { r = 0, g = 0, b = 0, a = 1 },
        TITLE_font = "Fonts\\FRIZQT__.TTF",
        TITLE_fontSize = 18,
        buttonBgColor = { r = 1, g = 1, b = 1, a = 1 },
        buttonBorderColor = { r = 0, g = 0, b = 0, a = 1 },
        iconTexture = 1455894,
        iconVertex = resetVertex,
        iconSize = { width = 48, height = 48 },
    },
    ["Horde"] = {
        dropDownIcon = "|TInterface\\Timer\\Horde-Logo:26:26|t",
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        tile = false,
        tileSize = 0,
        edgeSize = 2,
        insets = {
            left = 1,
            right = 1,
            top = 2,
            bottom = 2
        },
        backgroundColor = { r = 0.18, g = 0.129, b = 0.129, a = 0.805 }, --almost black rgb01(0.18, 0.129, 0.129, 0.82)
        borderColor = { r = 1, g = 0.0, b = 0.0, a = 1 },                --pure red
        thescrlfrm = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0,
            },
            myAtlas = "accountupgradebanner-wod",
            myAtlasVertex = resetVertex,
            myAtlasTexCoord = { 0, 1, 0, 1 },
            scrollFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollThumbTexture = 516953,
            scrollThumbVertex = resetVertex,
            scrollThumbSize = { width = 32, height = 32 },
        },
        theStefak = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 3,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            cristaFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            cristaFrameBorderColor = { r = 0.639, g = 0.565, b = 0.506, a = 1 }, -- Dark Grey Orange rgb01(0.639, 0.565, 0.506)
        },
        theAtari = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            isEditBoxBG = { r = 0.44, g = 0.114, b = 0.051, a = 0.15 },
            isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 },
        },
        titleColor = { r = 0.8, g = 0.224, b = 0.125, 0.895 },
        TITLE_font = "Fonts\\FRIZQT__.TTF",
        TITLE_fontSize = 18,
        buttonBgColor = { r = 0.85, g = 0.05, b = 0.05, a = 0.750 },
        buttonBorderColor = { r = 0.0, g = 0.0, b = 0.0, a = 1 },
        iconTexture = 132485,
        iconVertex = resetVertex,
        iconSize = { width = 48, height = 48 },
    },
    ["Alliance"] = {
        dropDownIcon = "|TInterface\\Timer\\Alliance-Logo:26:26|t",
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        tile = false,
        tileSize = 0,
        edgeSize = 2,
        insets = {
            left = 2,
            right = 2,
            top = 2,
            bottom = 2,
        },
        backgroundColor = { r = 0.157, g = 0.09, b = 0.49, a = 0.805 }, --blue rgb01(0.157, 0.09, 0.49, 0.729)
        borderColor = { r = 0.4, g = 0.390, b = 0.315, a = 0.975 },     -- dark yellow grey rgb01(0.4, 0.392, 0.314, 0.871)
        thescrlfrm = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            myAtlas = "AllianceScenario-TrackerHeader",
            myAtlasVertex = resetVertex,
            myAtlasTexCoord = { 0, 1, 0, 1 },
            scrollFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollThumbTexture = 516949,
            scrollThumbVertex = resetVertex,
            scrollThumbSize = { width = 32, height = 32 },
        },
        theStefak = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 2,
            insets = {
                left = 1,
                right = 1,
                top = 1,
                bottom = 1,
            },
            cristaFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            cristaFrameBorderColor = { r = .650, g = 0.650, b = 0.15, a = 0.455 },
        },
        theAtari = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            isEditBoxBG = { r = 0, g = 0, b = 0, a = 0 },
            isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 },
        },
        titleColor = { r = 0.894, g = 0.91, b = 0.055, 0.859 }, -- Alliance Gold rgb01(0.894, 0.91, 0.055, 0.859)
        TITLE_font = "Fonts\\FRIZQT__.TTF",
        TITLE_fontSize = 18,
        buttonBgColor = { r = 0.161, g = 0.165, b = 0.18, a = 0.785 },
        buttonBorderColor = { r = 0.345, g = 0.345, b = 0.355, a = 1 },
        iconTexture = 132486,
        iconVertex = resetVertex,
        iconSize = { width = 48, height = 48 },
    },
    ["Hacker"] = {
        dropDownIcon = "|T4667414:18:18:0|t",
        bgFile = "Interface\\AddOns\\OldGods\\Textures\\hacker.tga",
        edgeFile = "Interface\\AddOns\\OldGods\\Textures\\hackerborder.tga",
        tile = false,
        tileSize = 0,
        edgeSize = 3,
        insets = {
            left = 1,
            right = 1,
            top = 1,
            bottom = 1
        },
        backgroundColor = { r = 0.8, g = 0.8, b = 0.8, a = 0.750 },
        borderColor = { r = .6, g = 1, b = .2, a = 1 },
        thescrlfrm = {
            bgFile = "Interface\\AddOns\\OldGods\\Textures\\hackerScrollFrameBG.tga",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            myAtlas = "legioninvasion-ScenarioTrackerToast",
            myAtlasVertex = resetVertex,
            myAtlasTexCoord = { 0, 1, 0, 1 },
            scrollFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollThumbTexture = 1394890,
            scrollThumbVertex = resetVertex,
            scrollThumbSize = { width = 16, height = 16 },
        },
        theStefak = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\AddOns\\OldGods\\Textures\\hackerborder.tga",
            tile = true,
            tileSize = 32,
            edgeSize = 4,
            insets = {
                left = 1,
                right = 1,
                top = 1,
                bottom = 1
            },
            cristaFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            cristaFrameBorderColor = { r = 0.355, g = 0.891, b = 0.365, a = 0.785 },
        },
        theAtari = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            isEditBoxBG = { r = 0.094, g = 0.31, b = 0.094, a = 0.785 }, -- Dark Green rgb01(0.094, 0.31, 0.094, 0.788)
            isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 },
        },
        TITLE_font = "Interface\\AddOns\\OldGods\\Go-Mono.ttf",
        TITLE_fontSize = 18,
        titleColor = { r = 0.25, g = .985, b = 0.15 },
        buttonBgColor = { r = .895, g = .895, b = .895, a = .55 },
        buttonBorderColor = { r = 0.0, g = 0.8, b = 0.225, a = 0.75 },
        iconTexture = 4667414,
        iconVertex = resetVertex,
        iconSize = { width = 48, height = 48 },
    },
    ["ChatGPT"] = {
        dropDownIcon = "|T5648287:18:18:0|t",
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        tile = false,
        tileSize = 0,
        edgeSize = 3,
        insets = {
            left = 1,
            right = 1,
            top = 1,
            bottom = 1,
        },
        backgroundColor = { r = 0.1, g = 0.2, b = 0.3, a = 0.95 }, -- Dark teal background
        borderColor = { r = 0.0, g = 0.5, b = 0.4, a = 1 },        -- Green border
        thescrlfrm = {
            bgFile = nil,
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            myAtlas = "Artifacts-Shaman-BG",
            myAtlasVertex = resetVertex,
            myAtlasTexCoord = { 0, 1, 0, 1 },
            scrollFrameBGColor = { r = 1, g = 1, b = 1, a = 1 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollThumbTexture = 606551,
            scrollThumbVertex = resetVertex,
            scrollThumbSize = { width = 20, height = 20 },
        },
        theStefak = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 3,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0,
            },
            cristaFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            cristaFrameBorderColor = { r = 0.078, g = 0.961, b = 0.643, a = 0.350 },
        },
        theAtari = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            isEditBoxBG = { r = 0.118, g = 0.31, b = 0.275, a = 0.13 }, -- Dark Green Blue rgb01(0.118, 0.31, 0.278, 0.839)
            isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 },
        },
        TITLE_font = "Fonts\\FRIZQT__.TTF",
        TITLE_fontSize = 18,
        titleColor = { r = 0.29, g = 1, b = 0.888, 0.658 },
        buttonBgColor = { r = 0.1, g = 0.2, b = 0.3, a = 0.9 },
        buttonBorderColor = { r = 0.0, g = 0.5, b = 0.4, a = 1 },
        iconTexture = 5648287,
        iconVertex = resetVertex,
        iconSize = { width = 48, height = 48 },
    },
    ["WoW Theme"] = {
        dropDownIcon = "|T1120721:18:18:0|t",
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        tile = false,
        tileSize = 0,
        edgeSize = 2,
        insets = {
            left = 2,
            right = 2,
            top = 2,
            bottom = 2,
        },
        backgroundColor = { r = 0.388, g = 0.286, b = 0.18, a = 0.750 }, -- rgb01(0.388, 0.286, 0.18, 0.8)
        borderColor = { r = 0.122, g = 0.224, b = 0.271, a = 0.750 },    --BROWN rgb01(0.62, 0.549, 0.408)
        thescrlfrm = {
            bgFile = "Interface\\AddOns\\OldGods\\Textures\\WOWLogo.tga",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            scrollFrameBGColor = { r = 1, g = 1, b = 1, a = 0.40 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollThumbTexture = 511913,
            scrollThumbVertex = resetVertex,
            scrollThumbSize = { width = 18, height = 18 },
        },
        theStefak = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 2,
            insets = {
                left = 1,
                right = 1,
                top = 2,
                bottom = 1
            },
            cristaFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            cristaFrameBorderColor = { r = 0.38, g = 0.557, b = 0.612, a = 1 }, -- rgb01(0.38, 0.557, 0.612)
        },
        theAtari = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            isEditBoxBG = { r = 0.278, g = 0.184, b = 0.078, a = 0.77 },
            isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 },
        },
        TITLE_font = "Fonts\\MORPHEUS.ttf",
        TITLE_fontSize = 18,
        titleColor = { r = 1, g = 0.769, b = 0.216 },
        buttonBgColor = { r = 0.2, g = 0.1, b = 0.05, a = 0.625 },
        buttonBorderColor = { r = 1, g = 0.769, b = 0.216, a = 0.850 },
        iconTexture = 1120721,
        iconVertex = resetVertex,
        iconSize = { width = 52, height = 52 },
    },
}
--#endregion Global table OG_Themes

--#region Global table OG_Fonts
OG_Fonts = {
    ["Acme"] = {
        fPath = "Interface\\AddOns\\OldGods\\Fonts\\Acme-Regular.ttf",
        fSize = 20,
        fFlag = "OUTLINE",
    },
    ["Anonymous"] = {
        fPath = "Interface\\AddOns\\OldGods\\Fonts\\Anonymous.ttf",
        fSize = 16,
        fFlag = "THICKOUTLINE",
    },
    ["BlackOpsOne"] = {
        fPath = "Interface\\AddOns\\OldGods\\Fonts\\BlackOpsOne-Regular.ttf",
        fSize = 18,
        fFlag = "OUTLINE",
    },
    ["Cartoonist-Hand"] = {
        fPath = "Interface\\AddOns\\OldGods\\Fonts\\SF_Cartoonist_Hand.ttf",
        fSize = 22,
        fFlag = "OUTLINE",
    },
    ["Courier-Code"] = {
        fPath = "Interface\\AddOns\\OldGods\\Fonts\\CourierPrimeCode.ttf",
        fSize = 16,
        fFlag = "OUTLINE",
    },
    ["Markazi-Text"] = {
        fPath = "Interface\\AddOns\\OldGods\\Fonts\\markazitext-regular.ttf",
        fSize = 22,
        fFlag = "OUTLINE",
    },
    ["Roboto"] = {
        fPath = "Interface\\AddOns\\OldGods\\Fonts\\RobotoCondensed-Regular.ttf",
        fSize = 22,
        fFlag = "OUTLINE",
    },
}
--#endregion Global table OG_Fonts

--#endregion Global Tables

--#region Jokes Quotes Guild Tables
local JokeData = { "Why cant you trust an atom? Because they make up literally everything.",
    "What happens to an illegally parked frog? It gets toad away.",
    "Why did the parents not like their sons biology teacher? He had skeletons in his closet.",
    "A Freudian slip is when you say one thing but mean your mother.",
    "What do you call a bear with no teeth? A gummy bear.",
    "If you take $2 out of an ATM that has a $2.50 fee, do you owe the machine money?",
    "How can you tell youre getting old? When you go to an antique auction and three people bid on you.",
    "Did you hear the one about the cat who ate a ball of yarn? She had mittens.",
    "Give a man a fish, and he will eat for a day. Teach a man to fish, and he will sit in a boat and drink beer all day.",
    "Why dont pirates take a shower before they walk the plank? They just wash up on shore.",
    "How much did Santa pay for his sleigh? Nothing, it was on the house.",
    "I gave my handyman a to-do list, but he only did jobs 1, 3, and 5. Turns out he only does odd jobs.",
    "Who won the neck decorating contest? It was a tie.", "Dogs can't operate MRI machines. But catscan.",
    "I was going to try an all almond diet, but that's just nuts.",
    "Today at the bank, an old lady asked me to check her balance... So I pushed her over. ",
    "How many storm troopers does it take to change a lightbulb? None, because they are all on the dark side.",
    "If your house is cold, just stand in the corner. Its always 90 degrees there.",
    "The other day I bought a thesaurus, but when I got home and opened it, all the pages were blank. I have no word to describe how angry I am.",
    "Have you ever heard about the kidnapping at school? It's okay, he woke up.",
    "I found a book called How to Solve 50% of Your Problems. So I bought 2.",
    "I stayed up all night wondering where the sun went, and then it dawned on me.",
    "How do you make holy water? You boil the hell out of it.",
    "You don't need a parachute to go skydiving. You need one to go skydiving twice.",
    "Why cant you hear a pterodactyl go to the bathroom? The P is silent.",
    "Why do golfers take an extra pair of socks when they go golfing? In case they get a hole in one!",
    "Singing in the shower is fun until you get soap in your mouth. Then its a soap opera.",
    "Why can't a nose be 12 inches long? Because then it would be a foot.",
    "You think swimming with sharks isnt expensive? Swimming with sharks cost me an arm and a leg.",
    "It takes guts to be an organ donor.",
    "How did I know my girlfriend thought I was invading her privacy? She wrote about it in her diary.",
    "Why did the electric car feel discriminated against? Because the rules weren't current.",
    "I'm such a good navigator, a self-driving car once asked me for directions.",
    "Why do melons have weddings? They cantelope.",
    "What did the bison say to his son when he left the ranch? Bi-son.",
    "Watch what you say around the egg whites. They can't take a yolk.",
    "Were did the pumpkins have their meeting? In the gourdroom.",
    "What's the best way to save your dad jokes? In a dadda-base.",
    "I got a new pen that can write under water. It can write other words too.",
    "My boss said “dress for the job you want, not for the job you have.” So I went in as Batman.",
    "I went to the aquarium this weekend, but I didn’t stay long. There’s something fishy about that place.",
    "What do you call a sheep who can sing and dance? Lady Ba Ba.",
    "What do you call a French man wearing sandals? Philipe Fallop.",
    "Why can't dinosaurs clap their hands? Because they're extinct.",
    "Why should you never take sides in an argument at the dinner table? Trick question. It's the perfect time to take sides because no one's paying attention. Bring Tupperware.",
    "Who won the neck decorating contest? It was a tie.",
    "Where do rainbows go when they've been bad? To prism, so they have time to reflect on what they've done.",
    "Dogs can't operate MRI machines. But catscan.",
    "What do mermaids use to wash their fins? Tide.",
    "What did the skillet eat on its birthday? Pan-cakes.",
    "Why couldn't the produce manager make it to work? He could drive, but he didn't avocado.",
    "I went to a silent auction. I won a dog whistle and two mimes.",
    "How is my wallet like an onion? Every time I open it, I cry.",
    "What do you call a dog who meditates? Aware wolf.",
    "What kind of fish do penguins catch at night? Star fish.",
    "Which vegetable has the best kung fu? Broc-lee.",
    "Can a frog jump higher than a house? Of course, a house can't jump.",
    "Dad: What is the difference between a piano, a tuna, and a pot of glue? Me: I don't know. Dad: You can tuna piano but you can't piano a tuna. Me: What about the pot of glue? Dad: I knew you'd get stuck on that.",
}

local QuoteData = { "The customer is always right, in matters of taste - Harry Gordon Selfridge",
    "The only limit to our realization of tomorrow is our doubts of today - Franklin D. Roosevelt",
    "In the middle of every difficulty lies opportunity - Albert Einstein",
    "Do not go where the path may lead, go instead where there is no path and leave a trail - Ralph Waldo Emerson",
    "Success is not final, failure is not fatal: It is the courage to continue that counts - Winston Churchill",
    "It does not matter how slowly you go as long as you do not stop - Confucius",
    "Strive not to be a success, but rather to be of value - Albert Einstein",
    "The future belongs to those who believe in the beauty of their dreams - Eleanor Roosevelt",
    "You miss 100% of the shots you don’t take - Wayne Gretzky",
    "Whether you think you can or you think you can’t, you’re right - Henry Ford",
    "I have learned over the years that when one’s mind is made up, this diminishes fear - Rosa Parks",
    "Do what you can, with what you have, where you are - Theodore Roosevelt",
    "If you want to lift yourself up, lift up someone else - Booker T. Washington",
    "Happiness is not something ready made. It comes from your own actions - Dalai Lama",
    "Life is 10% what happens to us and 90% how we react to it - Charles R. Swindoll",
    "Believe you can and you’re halfway there - Theodore Roosevelt",
    "It is during our darkest moments that we must focus to see the light - Aristotle Onassis",
    "Too many of us are not living our dreams because we are living our fears - Les Brown",
    "If you can dream it, you can achieve it - Zig Ziglar",
    "Act as if what you do makes a difference. It does - William James",
    "The only way to do great work is to love what you do - Steve Jobs",
    "Don’t watch the clock; do what it does. Keep going - Sam Levenson",
    "Opportunities don't happen. You create them - Chris Grosser",
    "What lies behind us and what lies before us are tiny matters compared to what lies within us - Ralph Waldo Emerson",
    "Your time is limited, don’t waste it living someone else’s life - Steve Jobs",
    "Start where you are. Use what you have. Do what you can - Arthur Ashe",
    "Keep your face always toward the sunshine—and shadows will fall behind you - Walt Whitman",
    "Success usually comes to those who are too busy to be looking for it - Henry David Thoreau",
    "The best revenge is massive success - Frank Sinatra",
    "Don't be afraid to give up the good to go for the great - John D. Rockefeller",
    "I find that the harder I work, the more luck I seem to have - Thomas Jefferson",
    "It is our choices, that show what we truly are, far more than our abilities - J.K. Rowling",
    "Success is walking from failure to failure with no loss of enthusiasm - Winston Churchill",
    "Hardships often prepare ordinary people for an extraordinary destiny - C.S. Lewis",
    "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle - Christian D. Larson",
    "What you get by achieving your goals is not as important as what you become by achieving your goals - Zig Ziglar",
    "Don’t limit your challenges. Challenge your limits - Anonymous",
    "If you want to achieve greatness stop asking for permission - Anonymous",
    "Things work out best for those who make the best of how things work out - John Wooden",
    "Work like there is someone working 24 hours a day to take it away from you - Mark Cuban",
    "You don’t have to be great to start, but you have to start to be great - Zig Ziglar",
    "Dream big and dare to fail - Norman Vaughan",
    "The man who has confidence in himself gains the confidence of others - Hasidic Proverb",
    "Do what you love and the money will follow - Marsha Sinetar",
    "If you are not willing to risk the usual, you will have to settle for the ordinary - Jim Rohn",
    "Failure will never overtake me if my determination to succeed is strong enough - Og Mandino",
    "We may encounter many defeats but we must not be defeated - Maya Angelou",
    "Setting goals is the first step in turning the invisible into the visible - Tony Robbins",
    "Do not wait to strike till the iron is hot; but make it hot by striking - William Butler Yeats",
    "Life is what happens when you’re busy making other plans - John Lennon",
    "The way to get started is to quit talking and begin doing - Walt Disney",
    "Do one thing every day that scares you - Eleanor Roosevelt",
    "Dream as if you’ll live forever, live as if you’ll die today - James Dean",
    "It always seems impossible until it’s done - Nelson Mandela",
    "What we achieve inwardly will change outer reality - Plutarch",
    "Don’t count the days, make the days count - Muhammad Ali",
    "You must be the change you wish to see in the world - Mahatma Gandhi",
    "Great minds discuss ideas; average minds discuss events; small minds discuss people - Eleanor Roosevelt",
    "The best way to predict the future is to invent it - Alan Kay",
    "If you’re going through hell, keep going - Winston Churchill",
    "Success is how high you bounce when you hit bottom - George S. Patton",
    "The secret of getting ahead is getting started - Mark Twain",
    "Opportunities don't knock until you build a door - Milton Berle",
    "Fall seven times and stand up eight - Japanese Proverb",
    "Limitations live only in our minds. But if we use our imaginations, our possibilities become limitless - Jamie Paolinetti",
    "Everything you’ve ever wanted is on the other side of fear - George Addair",
    "How wonderful it is that nobody need wait a single moment before starting to improve the world - Anne Frank",
    "Only those who dare to fail greatly can ever achieve greatly - Robert F. Kennedy",
    "If you do what you’ve always done, you’ll get what you’ve always gotten - Tony Robbins",
    "Success is liking yourself, liking what you do, and liking how you do it - Maya Angelou",
    "Perfection is not attainable, but if we chase perfection we can catch excellence - Vince Lombardi",
    "Do not pray for an easy life, pray for the strength to endure a difficult one - Bruce Lee",
    "I am not a product of my circumstances. I am a product of my decisions - Stephen Covey",
    "There is no substitute for hard work - Thomas Edison",
    "Try not to become a man of success, but rather try to become a man of value - Albert Einstein",
    "The best preparation for tomorrow is doing your best today - H. Jackson Brown, Jr.",
    "If you tell the truth, you don’t have to remember anything - Mark Twain",
    "You are never too old to set another goal or to dream a new dream - C.S. Lewis",
    "A journey of a thousand miles begins with a single step - Lao Tzu",
    "He who has a why to live can bear almost any how - Friedrich Nietzsche",
    "Challenges are what make life interesting and overcoming them is what makes life meaningful - Joshua J. Marine",
    "Your life does not get better by chance, it gets better by change - Jim Rohn",
    "Change your thoughts and you change your world - Norman Vincent Peale",
    "What seems to us as bitter trials are often blessings in disguise - Oscar Wilde",
    "We can’t help everyone, but everyone can help someone - Ronald Reagan",
    "An unexamined life is not worth living - Socrates", "Happiness depends upon ourselves - Aristotle",
    "Be so good they can’t ignore you - Steve Martin",
    "The mind is everything. What you think you become - Buddha",
    "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do - Mark Twain",
    "To handle yourself, use your head; to handle others, use your heart - Eleanor Roosevelt",
    "Do or do not. There is no try - Yoda", "Whatever you are, be a good one - Abraham Lincoln",
    "The harder the conflict, the greater the triumph - George Washington",
    "Turn your wounds into wisdom - Oprah Winfrey",
    "Be yourself; everyone else is already taken - Oscar Wilde",
    "Life isn’t about finding yourself. It’s about creating yourself - George Bernard Shaw",
    "You can’t use up creativity. The more you use, the more you have - Maya Angelou" }

local helpData = { "Welcome to the |cAA0040FFOld Gods Guild Chat|r AddOn!",
    "The slash commands used from the input box are...",
    "Type |cFFCCAA99/joke|r for a random joke", "Type |cFFCCAA99/quote|r for a random quote",
    "Type |cFFCCAA99/ogg|r to list specific messages to send to the Guild", "Type |cFFCCAA99/reload|r to reload UI",
    "Type |cFFCCAA99/afk|r set yourself away", "Type |cFFCCAA99/ognote|r to create or view encrypted notes",
    "To veiw the available jokes and quotes",
    "click the |cFF0DAF00next page|r button", "________________________________________",
    "by |cFF7ba9FFLazyeyez|r aka Darthterac with mentoring from |cFF00F906chatGPT|r",
    "________________________________________", "|cCF99000AWork in progress Thanks for testing!|r" }

local GuildData = {
    "Welcome to Kiss My Darnassus {moon} KMDA {moon} https://discord.gg/3Gpja7PVBp to rank to member and join in voice comms for Mythic groups! {star} WELCOME!! Questions? Contact an Officer/GM! Check the calendar events weekly!",
    "Attention, guildmates {skull}! The purge begins soon. Expect kicked player alerts—don’t be alarmed. We’re trimming inactive members to keep us strong. Remain active and loyal. Long live The Old Gods! {triangle}",
    "Friends, the purge is complete. Take a moment to breathe—our ranks are refreshed. Initiates, please log in every 14 days to keep your place. Members, every 28 days will suffice. We stand united, renewed, and stronger than ever.",
    "{moon} Kiss My Darnassus * Delves and Key's Event * For info & participation just ask for invite or help from a Officer/GM {moon} KMDA {star}" }

-- Table that is used to match class to its familiar color in game
local CLASS_COLORS = {
    ["Druid"] = "FF7D0A",
    ["Hunter"] = "A9D271",
    ["Mage"] = "40C7EB",
    ["Paladin"] = "F58CBA",
    ["Priest"] = "FFFFFF",
    ["Rogue"] = "FFF569",
    ["Shaman"] = "0070DE",
    ["Warlock"] = "8787ED",
    ["Warrior"] = "C79C6E",
    ["Death Knight"] = "C41E3A",
    ["Monk"] = "00FF96",
    ["Demon Hunter"] = "A330C9",
    ["Evoker"] = "33937F"
}

-- table that is used to assign colors to separate ranks in the guild
local RANK_COLORS = {
    ["GM Lightbringer"] = "FFA800", -- Legendary (orange)
    ["Officer"] = "A335EE",         -- Epic (purple)
    ["Veteran"] = "17a69a",         -- LUX LOVE YOU BUDDY (turquoise) lux's favorite color!
    ["Member"] = "0070DD",          -- Rare (blue)
    ["Initiate"] = "1EFF00"         -- Uncommon (green)
}

--[[ might use this table dont know yet
local CLASS_ROLES = {
    ["Death Knight"] = { "DPS", "Tank" },
    ["Demon Hunter"] = { "DPS", "Tank" },
    ["Druid"] = { "DPS", "Tank", "Healer" },
    ["Evoker"] = { "DPS", "Healer" },
    ["Hunter"] = { "DPS" },
    ["Mage"] = { "DPS" },
    ["Monk"] = { "DPS", "Tank", "Healer" },
    ["Paladin"] = { "DPS", "Tank", "Healer" },
    ["Priest"] = { "DPS", "Healer" },
    ["Rogue"] = { "DPS" },
    ["Shaman"] = { "DPS", "Healer" },
    ["Warlock"] = { "DPS" },
    ["Warrior"] = { "DPS", "Tank" }
}
]]
--#endregion tables end

--#region Utility and Other functions
local soundEnabled = true

OG_tHax = {} -- this table and function just send what ever is printed to the default chat frame to ChatHistoryWindow
function Gcopy(ChatHistoryWindow, str)
    if ChatHistoryWindow then
        local haxA = ChatHistoryWindow.editBox
        local str_ = str .. "\n"
        table.insert(OG_tHax, str_)
        print(str_)
        C_Timer.After(1, function()
            local haxB = table.concat(OG_tHax, "\n")
            haxA:SetText(haxB)
        end)
    end
end -- enjoy its part of the next push some cool history of the addon while developing. Use it in a macro

local function IsMessageFiltered(msg)
    local function toBytes(str)
        local b = {}
        for i = 1, #str do b[#b + 1] = string.byte(str, i) end
        return b
    end

    local function byteEquals(a, b)
        if #a ~= #b then return false end
        for i = 1, #a do
            if a[i] ~= b[i] then return false end
        end
        return true
    end

    for word in msg:lower():gmatch("%S+") do
        local wordBytes = toBytes(word)
        for _, pattern in ipairs(ByteFilter.BadWordBytePatterns) do
            if byteEquals(wordBytes, pattern) then
                return true
            end
        end
    end

    return false
end

-- Call this to warn a ignorant people
function ByteFilter.WarnIfNecessary(input)
    if ByteFilter.ContainsBadBytes(input) then
        print("|cffff0000[OldGods]|r {x} |cFFF0F000Please reconsider your message. We rise by lifting others.|r")
    end
end

local function DumpTable(tbl, indent) -- debug i used this with gCopy() to see inside the tables
    indent = indent or 0
    local prefix = string.rep("  ", indent)

    for k, v in pairs(tbl) do
        if type(v) == "table" then
            print(prefix .. tostring(k) .. " = {")
            DumpTable(v, indent + 1)
            print(prefix .. "}")
        else
            print(prefix .. tostring(k) .. " = " .. tostring(v))
        end
    end
end

local function SumTableData(table_name)
    local size = 0
    if type(table_name) == "table" then
        for key, value in pairs(table_name) do
            size = size + #tostring(key) + #tostring(value)
        end
    end
    return size
end

local function tContains(table, value)
    for _, v in ipairs(table) do
        if v == value then
            return true
        end
    end
    return false
end

local function GetCurrentThemeName()
    for k, v in pairs(OG_Themes) do
        if v == CurrentTheme then
            return k
        end
    end
    return "Your Custom Theme" -- Fallback if no match is found
end

local function ResolveNestedKey(tbl, key, value)
    local current = tbl
    local parts = {}
    for part in string.gmatch(key, "([^%.]+)") do
        table.insert(parts, part)
    end

    -- If value is provided, set it
    if value ~= nil then
        for i = 1, #parts - 1 do
            local part = parts[i]
            if not current[part] then current[part] = {} end
            current = current[part]
        end
        current[parts[#parts]] = value
    else
        -- Otherwise, get the value
        for i = 1, #parts do
            current = current[parts[i]]
            if not current then return nil end
        end
    end
    return current
end

local function updateTargetEditBoxText(editBox, table_name)
    local combinedText = table.concat(table_name, "\n")
    editBox:SetText(combinedText)
    editBox:SetTextInsets(5, 5, 10, 5)
    -- Scroll to the bottom of the ScrollFrame
    local scrollFrame = editBox:GetParent()
    if scrollFrame then
        C_Timer.After(0.1, function()
            scrollFrame:SetVerticalScroll(scrollFrame:GetVerticalScrollRange())
        end)
    end
end

local function calDateStamp()
    local c = C_DateAndTime.GetCurrentCalendarTime()
    local w = CALENDAR_WEEKDAY_NAMES[c.weekday]
    local m = CALENDAR_FULLDATE_MONTH_NAMES[c.month]
    local x = string.format("%02d:%02d, %s, %d %s %d", c.hour, c.minute, w, c.monthDay, m, c.year)
    return x
end

local function UpdateChatHistoryTitle(table_name)
    if type(table_name) ~= "table" or next(table_name) == nil then
        return "Chat History (0.00 KB)"
    end

    local table_size = SumTableData(table_name)
    local size_in_kb = math.max(table_size / 1024, 0) -- Avoid negative values
    return string.format("Chat History (%.2f KB)", size_in_kb)
end

local function saveDateMessage(table_name)
    if type(table_name) ~= "table" or next(table_name) == nil then
        return "Nothing to save, tell a joke engage the guild :)"
    end

    local thistime = calDateStamp()
    local table_size = SumTableData(table_name)
    local size_in_kb = math.max(table_size / 1024, 0) -- Avoid negative values

    return string.format("MEMORY FREED: (%.2f KB)", size_in_kb) .. " \n" .. thistime
end

-- GetClassColor(class) returns the hexColor value assined to the class key in CLASS_COLORS table
local function GetClassColor(class)
    return CLASS_COLORS[class] or "FFFFFF" --Default to white if not found
end

--GetRankColor(rank): returns the hexColor value assigned to the rank key in RANK_COLORS table
local function GetRankColor(rank)
    return RANK_COLORS[rank] or "FFFFFF" -- Default to white if rank not listed
end

local function fancyTransform(text)
    -- Mapping normal letters to one "fancy" counterpart
    local charMap = {
        A = "å",
        B = "ß",
        C = "¢",
        D = "Ð",
        E = "ε",
        F = "ƒ",
        G = "φ",
        H = "Ħ",
        I = "Í",
        J = "Ĵ",
        K = "Ķ",
        L = "Ł",
        M = "M",
        N = "ñ",
        O = "Ø",
        P = "¶",
        Q = "q",
        R = "r",
        S = "§",
        T = "†",
        U = "ù",
        V = "v",
        W = "Ŵ",
        X = "×",
        Y = "ÿ",
        Z = "ž"
    }

    -- Transform the input text
    local transformed = text:gsub(".", function(c)
        local upper = c:upper()    -- Get uppercase version for matching
        return charMap[upper] or c -- Replace if mapped, otherwise keep original
    end)

    return transformed
end
--#endregion Utility and other functions

--#region OG_Themes and OG_Fonts functions
local function ApplyEditBoxTheme(editBox, theme)
    if not editBox.hasCustomBackdrop then
        Mixin(editBox, BackdropTemplateMixin)
        editBox.hasCustomBackdrop = true
    end


    if theme.theAtari.bgFile and theme.theAtari.edgeFile then
        editBox:SetBackdrop({
            bgFile = theme.theAtari.bgFile,
            edgeFile = theme.theAtari.edgeFile,
            tile = theme.theAtari.tile,
            tileSize = theme.theAtari.tileSize,
            edgeSize = theme.theAtari.edgeSize,
            insets = theme.theAtari.insets,
        })
    end
    -- Apply editBox Background Color
    if theme.theAtari.isEditBoxBG then
        editBox:SetBackdropColor(
            theme.theAtari.isEditBoxBG.r,
            theme.theAtari.isEditBoxBG.g,
            theme.theAtari.isEditBoxBG.b,
            theme.theAtari.isEditBoxBG.a
        )
    end
    -- Apply editBox Border Color
    if theme.theAtari.isEditBoxBorder then
        editBox:SetBackdropBorderColor(
            theme.theAtari.isEditBoxBorder.r,
            theme.theAtari.isEditBoxBorder.g,
            theme.theAtari.isEditBoxBorder.b,
            theme.theAtari.isEditBoxBorder.a
        )
    end
end

local function ApplyTheme(frame, theme)
    CurrentTheme = theme
    if frame.editBox then
        ApplyEditBoxTheme(frame.editBox, theme)
    end

    -- Set Backdrop and Border for the Main Frame
    if theme.bgFile and theme.edgeFile then
        frame:SetBackdrop({
            bgFile = theme.bgFile,
            edgeFile = theme.edgeFile,
            tile = theme.tile,
            tileSize = theme.tileSize,
            edgeSize = theme.edgeSize,
            insets = theme.insets,
        })
    end

    -- Set Background Color for the Main Frame
    if theme.backgroundColor then
        frame:SetBackdropColor(
            theme.backgroundColor.r,
            theme.backgroundColor.g,
            theme.backgroundColor.b,
            theme.backgroundColor.a
        )
    end

    -- Set Border Color for the Main Frame
    if theme.borderColor then
        frame:SetBackdropBorderColor(
            theme.borderColor.r,
            theme.borderColor.g,
            theme.borderColor.b,
            theme.borderColor.a
        )
    end

    -- Apply ScrollFrame Background and Border Colors
    if frame.ScrollFrame then
        if theme.thescrlfrm.bgFile and theme.thescrlfrm.edgeFile then
            -- Ensure the ScrollFrame has a backdrop
            frame.ScrollFrame:SetBackdrop({
                bgFile = theme.thescrlfrm.bgFile,
                edgeFile = theme.thescrlfrm.edgeFile,
                tile = theme.thescrlfrm.tile,
                tileSize = theme.thescrlfrm.tileSize,
                edgeSize = theme.thescrlfrm.edgeSize,
                insets = theme.thescrlfrm.insets,
            })
        end

        -- Apply ScrollFrame Background Color
        if theme.thescrlfrm.scrollFrameBGColor then
            frame.ScrollFrame:SetBackdropColor(
                theme.thescrlfrm.scrollFrameBGColor.r,
                theme.thescrlfrm.scrollFrameBGColor.g,
                theme.thescrlfrm.scrollFrameBGColor.b,
                theme.thescrlfrm.scrollFrameBGColor.a
            )
        end

        -- Apply ScrollFrame Border Color
        if theme.thescrlfrm.scrollFrameBorderColor then
            frame.ScrollFrame:SetBackdropBorderColor(
                theme.thescrlfrm.scrollFrameBorderColor.r,
                theme.thescrlfrm.scrollFrameBorderColor.g,
                theme.thescrlfrm.scrollFrameBorderColor.b,
                theme.thescrlfrm.scrollFrameBorderColor.a
            )
        end

        -- Apply ScrollFrame Styling
        local scrollFrame = frame.ScrollFrame
        if not scrollFrame then return end

        local atlasBG = scrollFrame.atlasBG
        if not atlasBG then return end
        -- Check if we have an atlas name
        if theme.thescrlfrm and theme.thescrlfrm.myAtlas then
            atlasBG:Show()
            atlasBG:SetAtlas(theme.thescrlfrm.myAtlas, false)

            if theme.thescrlfrm.myAtlasVertex then
                local v = theme.thescrlfrm.myAtlasVertex
                atlasBG:SetVertexColor(v.r, v.g, v.b, v.a)
            else
                atlasBG:SetVertexColor(1, 1, 1, 1)
            end
            --table is {0,1,0,1} -- future proof my self fallback is default
            if theme.thescrlfrm.myAtlasTexCoord then
                atlasBG:SetTexCoord(unpack(theme.thescrlfrm.myAtlasTexCoord))
            else
                atlasBG:SetTexCoord(0, 1, 0, 1)
            end
        else
            --no atlas? hide the texture
            atlasBG:Hide()
        end

        if frame.ScrollFrame and theme.thescrlfrm.scrollThumbTexture and theme.thescrlfrm.scrollThumbSize and theme.thescrlfrm.scrollThumbVertex then
            local scrollBar = frame.ScrollFrame.ScrollBar
            if scrollBar then
                local thumb = scrollBar:GetThumbTexture()
                if thumb then
                    thumb:SetTexture(theme.thescrlfrm.scrollThumbTexture)
                    thumb:SetVertexColor(theme.thescrlfrm.scrollThumbVertex.r, theme.thescrlfrm.scrollThumbVertex.g,
                        theme.thescrlfrm.scrollThumbVertex.b, theme.thescrlfrm.scrollThumbVertex.a)
                    thumb:SetSize(theme.thescrlfrm.scrollThumbSize.width, theme.thescrlfrm.scrollThumbSize.height)
                end
            end
        end

        -- Apply cristaFrame Background and Border Colors
        if frame.cristaFrame then
            if theme.theStefak.bgFile and theme.theStefak.edgeFile then
                -- Ensure the cristaFrame has a backdrop
                frame.cristaFrame:SetBackdrop({
                    bgFile = theme.theStefak.bgFile,
                    edgeFile = theme.theStefak.edgeFile,
                    tile = theme.theStefak.tile,
                    tileSize = theme.theStefak.tileSize,
                    edgeSize = theme.theStefak.edgeSize,
                    insets = theme.theStefak.insets,
                })
            end

            -- Apply cristaFrame Background Color
            if theme.theStefak.cristaFrameBGColor then
                frame.cristaFrame:SetBackdropColor(
                    theme.theStefak.cristaFrameBGColor.r,
                    theme.theStefak.cristaFrameBGColor.g,
                    theme.theStefak.cristaFrameBGColor.b,
                    theme.theStefak.cristaFrameBGColor.a
                )
            end

            -- Apply cristaFrame Border Color
            if theme.theStefak.cristaFrameBorderColor then
                frame.cristaFrame:SetBackdropBorderColor(
                    theme.theStefak.cristaFrameBorderColor.r,
                    theme.theStefak.cristaFrameBorderColor.g,
                    theme.theStefak.cristaFrameBorderColor.b,
                    theme.theStefak.cristaFrameBorderColor.a
                )
            end
        end


        if frame.title and theme.TITLE_font and theme.TITLE_fontSize then
            frame.title:SetFont(theme.TITLE_font, theme.TITLE_fontSize)
        end

        -- Apply Title Color
        if frame.title and theme.titleColor then
            frame.title:SetTextColor(
                theme.titleColor.r,
                theme.titleColor.g,
                theme.titleColor.b,
                theme.titleColor.a
            )
        end
    end

    -- Apply Icon Styling
    if frame.icon and theme.iconTexture and theme.iconSize and theme.iconVertex then
        frame.icon:SetTexture(theme.iconTexture)
        frame.icon:SetVertexColor(theme.iconVertex.r, theme.iconVertex.g, theme.iconVertex.b, theme.iconVertex.a)
        frame.icon:SetSize(theme.iconSize.width, theme.iconSize.height)
    end

    -- Apply Button Styling
    for _, button in pairs(frame.buttons or {}) do
        if button.SetBackdrop then
            button:SetBackdrop({
                bgFile = theme.bgFile,
                edgeFile = theme.edgeFile,
                tile = theme.tile,
                tileSize = theme.tileSize,
                edgeSize = theme.edgeSize,
                insets = theme.insets,
            })
            button:SetBackdropColor(
                theme.buttonBgColor.r,
                theme.buttonBgColor.g,
                theme.buttonBgColor.b,
                theme.buttonBgColor.a
            )
            button:SetBackdropBorderColor(
                theme.buttonBorderColor.r,
                theme.buttonBorderColor.g,
                theme.buttonBorderColor.b,
                theme.buttonBorderColor.a
            )
        end
    end
end

local function ApplyFont(editBox, font)
    if font and font.fPath and font.fSize and font.fFlag then
        editBox:SetFont(font.fPath, font.fSize, font.fFlag)
        editBox:SetTextInsets(5, 5, 5, 5)
    else
        print("Error: Invalid font data provided.")
    end
end

local function CreateThemeForPlayersGuild(frame)
    --Thanks to Fizzlemizz on the forums for helping with the details
    --https://us.forums.blizzard.com/en/wow/t/explain-this-wizzardry/2065725

    if not OG_Themes or not frame or type(OG_Themes) ~= "table" then
        return
    end

    if IsInGuild() then
        local guildName = GetGuildInfo("player")

        if not guildName then return end

        local tbl = C_GuildInfo.GetGuildTabardInfo("player")

        if not tbl then return end

        local dynamicborderColor = {
            r = tbl.borderColor.r or 1,
            g = tbl.borderColor.g or 1,
            b = tbl.borderColor.b or 1,
            a = tbl.borderColor.a or 1,
        }

        local dynamicbackgroundColor = {
            r = tbl.backgroundColor.r or 0,
            g = tbl.backgroundColor.g or 0,
            b = tbl.backgroundColor.b or 0,
            a = tbl.backgroundColor.a or 0.6999,
        }

        local dynamicVertex = {
            r = tbl.emblemColor.r or 1,
            g = tbl.emblemColor.g or 1,
            b = tbl.emblemColor.b or 1,
            a = tbl.emblemColor.a or 1,
        }

        -- Ensure the guild has a theme entry, otherwise initialize it
        OG_Themes[guildName] = OG_Themes[guildName] or {
            dropDownIcon = "|T" .. tbl.emblemFileID .. ":24:30|t",
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 2,
            insets = { left = 1, right = 1, top = 1, bottom = 1 },
        }

        -- Populate primary theme properties
        OG_Themes[guildName].backgroundColor = dynamicbackgroundColor
        OG_Themes[guildName].borderColor = dynamicborderColor
        OG_Themes[guildName].TITLE_font = "Fonts\\MORPHEUS.ttf"
        OG_Themes[guildName].TITLE_fontSize = 18
        OG_Themes[guildName].titleColor = dynamicVertex
        OG_Themes[guildName].buttonBgColor = dynamicbackgroundColor
        OG_Themes[guildName].buttonBorderColor = dynamicborderColor
        OG_Themes[guildName].iconTexture = tbl.emblemFileID
        OG_Themes[guildName].iconVertex = dynamicVertex
        OG_Themes[guildName].iconSize = { width = 72, height = 72 }

        OG_Themes[guildName].thescrlfrm = OG_Themes[guildName].thescrlfrm or {
            bgFile = tbl.emblemFileID,
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = true,
            tileSize = 64,
            edgeSize = 4,
            insets = { left = 0, right = 0, top = 0, bottom = 0 },
        }
        OG_Themes[guildName].thescrlfrm.scrollFrameBGColor = { r = 0.15, g = 0.15, b = 0, a = 0.825 }
        OG_Themes[guildName].thescrlfrm.scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 }
        OG_Themes[guildName].thescrlfrm.scrollThumbTexture = tbl.emblemFileID
        OG_Themes[guildName].thescrlfrm.scrollThumbVertex = dynamicVertex
        OG_Themes[guildName].thescrlfrm.scrollThumbSize = { width = 32, height = 32 }


        OG_Themes[guildName].theStefak = OG_Themes[guildName].theStefak or {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 3,
            insets = { left = 0, right = 0, top = 0, bottom = 0 },
        }
        OG_Themes[guildName].theStefak.cristaFrameBorderColor = dynamicborderColor
        OG_Themes[guildName].theStefak.cristaFrameBGColor = { r = 0, g = 0, b = 0, a = 0 }

        OG_Themes[guildName].theAtari = OG_Themes[guildName].theAtari or {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = { left = 0, right = 0, top = 0, bottom = 0 },
        }
        OG_Themes[guildName].theAtari.isEditBoxBG = { r = 0.05, g = 0.05, b = 0.05, a = 0.75 }
        OG_Themes[guildName].theAtari.isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 }

        -- Debug print for confirmation
        print(CreateAtlasMarkup("UI-LFG-RoleIcon-Ready", 18, 18),
            "|cFF00FF00Theme Created|r: " .. "|T" .. tbl.emblemFileID .. ":18:18:0|t " .. guildName)
        --when addon loads intializeTheme() is called with  CreateThemeForPlayersGuild(GuildChatWindow) --
        --Drop down menu in General Options contentFrame will now have a users guild theme to select
    end
end
--#endregion OG_Themes and OG_Fonts ends

--#region Chat History Window
local function CreateSavedChatHistoryWindow(title)
    local ChatHistoryWindow = CreateFrame("Frame", "ChatHistoryWindow", UIParent, "BasicFrameTemplateWithInset")
    ChatHistoryWindow:SetSize(430, 300)                          -- Width, Height
    ChatHistoryWindow:SetPoint("LEFT", UIParent, "LEFT", 0, 200) -- Position
    ChatHistoryWindow:SetMovable(true)                           -- Make it draggable
    ChatHistoryWindow:EnableMouse(true)                          -- Allow mouse interaction
    ChatHistoryWindow:RegisterForDrag("LeftButton")              -- Drag with left mouse button
    ChatHistoryWindow:SetScript("OnDragStart", ChatHistoryWindow.StartMoving)
    ChatHistoryWindow:SetScript("OnDragStop", ChatHistoryWindow.StopMovingOrSizing)

    -- Add a title to the ChatHistoryWindow
    ChatHistoryWindow.title = ChatHistoryWindow:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    ChatHistoryWindow.title:SetPoint("TOP", ChatHistoryWindow, "TOP", 0, -5)
    ChatHistoryWindow.title:SetText(title)

    -- Create a scrollable edit box
    local scrollFrame = CreateFrame("ScrollFrame", nil, ChatHistoryWindow, "UIPanelScrollFrameTemplate")
    scrollFrame:SetSize(365, 210) -- Width, Height
    scrollFrame:SetPoint("TOP", ChatHistoryWindow, "TOP", 0, -30)

    local editBox = CreateFrame("EditBox", nil, scrollFrame)
    editBox:SetMultiLine(true)                    -- Enable multiple lines
    editBox:SetFontObject(GameFontHighlightLarge) -- Apply the FontObject
    editBox:SetTextInsets(1, 1, 1, 1)
    editBox:SetWidth(365)
    editBox:SetHeight(210)
    editBox:SetAutoFocus(false) -- Prevent automatic focus
    editBox:SetScript("OnEscapePressed", function()
        ChatHistoryWindow:Hide()
    end)                                -- Close on Esc while
    scrollFrame:SetScrollChild(editBox) -- Attach the edit box to the scrollFrame

    -- Add a "highlight all" button to the "window"
    local copyButton = CreateFrame("Button", nil, ChatHistoryWindow, "GameMenuButtonTemplate")
    copyButton:SetSize(120, 30)
    copyButton:SetPoint("BOTTOMLEFT", ChatHistoryWindow, "BOTTOM", -205, 10)
    copyButton:SetText("Highlight All")
    copyButton:SetNormalFontObject("GameFontNormal")
    copyButton:SetHighlightFontObject("GameFontHighlight")
    copyButton:SetScript("OnClick", function()
        editBox:HighlightText()
        editBox:SetFocus()
        print("|cFF00FF00 CTRL+C to Copy |r")
    end)

    -- Add a "clear history" button when clicked calls the deleteTable function
    local wipeButton = CreateFrame("Button", nil, ChatHistoryWindow, "GameMenuButtonTemplate")
    wipeButton:SetSize(100, 30)                                       -- Width, Height
    wipeButton:SetPoint("CENTER", ChatHistoryWindow, "BOTTOM", 0, 25) -- Center position between Highlight All and Close buttons
    wipeButton:SetText("Wipe History")
    wipeButton:SetNormalFontObject("GameFontNormal")
    wipeButton:SetHighlightFontObject("GameFontHighlight")
    wipeButton:SetScript("OnClick", function()
        wipe(OGsavedChat)
        if type(OGsavedChat) == "table" then
            updateTargetEditBoxText(ChatHistoryWindow.editBox, OGsavedChat)
            C_Timer.After(0.1, function()
                local newtitle = UpdateChatHistoryTitle()
                if newtitle then
                    ChatHistoryWindow.title:SetText(newtitle)
                end
            end)
            print("|cFF00FF00TABLE CLEARED|r")
        else
            print("|cFFFF0000ERROR|r: NOT a valid table")
        end
    end)

    local closeButton = CreateFrame("Button", nil, ChatHistoryWindow, "GameMenuButtonTemplate")
    closeButton:SetSize(120, 30)
    closeButton:SetPoint("BOTTOMRIGHT", ChatHistoryWindow, "BOTTOM", 205, 10)
    closeButton:SetText("Close")
    closeButton:SetNormalFontObject("GameFontNormal")
    closeButton:SetHighlightFontObject("GameFontHighlight")
    closeButton:SetScript("OnClick", function()
        ChatHistoryWindow:Hide()
    end)

    ChatHistoryWindow.editBox = editBox
    return ChatHistoryWindow
end
--Initialize
local SavedChatHistoryWindow = CreateSavedChatHistoryWindow("Chat History")
--#endregion Chat History window

--#region Guild Chat Window
local function CreateGuildChatWindow(title)
    -- Create the parent frame for the Guild Chat GUI
    local GuildChatWindow = CreateFrame("Frame", "GuildChatWindow", UIParent, "BackdropTemplate")
    GuildChatWindow:SetSize(524, 260) -- width, height
    GuildChatWindow:SetPoint("BOTTOMLEFT", UIParent)
    GuildChatWindow:SetFrameStrata("BACKGROUND")
    GuildChatWindow:SetFrameLevel(1)
    GuildChatWindow:SetMovable(true)
    GuildChatWindow:EnableMouse(true)
    GuildChatWindow:RegisterForDrag("LeftButton")
    GuildChatWindow:SetResizable(true)
    GuildChatWindow:SetScript("OnDragStart", function(self)
        self:StartMoving()
    end)
    GuildChatWindow:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
    end)

    -- Add a title to the frame
    GuildChatWindow.title = GuildChatWindow:CreateFontString("titlesrting", "OVERLAY", "GameFontHighlightLarge")
    GuildChatWindow.title:SetPoint("CENTER", GuildChatWindow, "TOP", 0, -15)
    GuildChatWindow.title:SetText(title)

    local iconFrame = GuildChatWindow:CreateTexture()
    iconFrame:SetPoint("BOTTOMLEFT", GuildChatWindow, "BOTTOMLEFT", 7, 9)
    GuildChatWindow.icon = iconFrame

    local cristaFrame = CreateFrame("Frame", nil, GuildChatWindow, "BackdropTemplate")
    cristaFrame:SetFrameStrata("BACKGROUND")
    cristaFrame:SetFrameLevel(3)
    cristaFrame:SetSize(GuildChatWindow:GetWidth() - 40, GuildChatWindow:GetHeight() - 115)
    cristaFrame:SetPoint("TOPLEFT", GuildChatWindow, "TOPLEFT", 16, -30)
    cristaFrame:SetPoint("BOTTOMRIGHT", GuildChatWindow, "BOTTOMRIGHT", -30, 85)
    GuildChatWindow.cristaFrame = cristaFrame

    local scrollFrame = CreateFrame("ScrollFrame", nil, GuildChatWindow, "BackdropTemplate, UIPanelScrollFrameTemplate") --, "BackdropTemplate, UIPanelScrollFrameTemplate")
    scrollFrame:SetFrameStrata("BACKGROUND")
    scrollFrame:SetFrameLevel(2)
    scrollFrame:SetSize(GuildChatWindow:GetWidth() - 40, GuildChatWindow:GetHeight() - 115)
    scrollFrame:SetPoint("TOPLEFT", GuildChatWindow, "TOPLEFT", 18, -32)
    scrollFrame:SetPoint("BOTTOMRIGHT", GuildChatWindow, "BOTTOMRIGHT", -32, 87)
    scrollFrame:EnableMouseWheel(true)

    local atlasBG = scrollFrame:CreateTexture(nil, "BACKGROUND", nil, 2)
    ---@diagnostic disable-next-line: param-type-mismatch
    atlasBG:SetAllPoints(scrollFrame)
    scrollFrame.atlasBG = atlasBG
    GuildChatWindow.ScrollFrame = scrollFrame

    local scrollBar = scrollFrame.ScrollBar
    scrollFrame.scrollBar = scrollBar
    scrollBar:GetThumbTexture()

    local editBox = CreateFrame("EditBox", nil, scrollFrame)
    editBox:SetPoint("TOPLEFT", scrollFrame)
    editBox:SetPoint("BOTTOMRIGHT", scrollFrame)
    editBox:SetSize(scrollFrame:GetWidth(), scrollFrame:GetHeight())
    editBox:SetFrameStrata("BACKGROUND")
    editBox:SetFrameLevel(3)
    editBox:SetMultiLine(true)
    editBox:SetTextInsets(5, 5, 5, 5)
    editBox:SetAutoFocus(false)
    editBox:EnableMouse(true)
    editBox:SetHyperlinksEnabled(true)

    editBox:SetScript("OnHyperlinkClick", function(self, link, text, button)
        if button == "RightButton" then
            ChatFrame_OnHyperlinkShow(self, link, text, button)
        elseif button == "LeftButton" then
            local linkType, linkplayer = strsplit(":", link)
            if linkType == "player" and linkplayer then
                local normalizedSender = Ambiguate(linkplayer, "none")
                local playerData = OG_TooltipInfoTable[normalizedSender]
                if playerData then
                    GameTooltip:SetOwner(self, "ANCHOR_CURSOR_RIGHT")
                    GameTooltip:ClearLines()
                    GameTooltip:AddLine(playerData.formattedTooltip, 1, 1, 1, true) -- Use the pre-formatted tooltip
                    --Apply custom backdrop settings
                    if not GameTooltip.hasCustomBackdrop then
                        Mixin(GameTooltip, BackdropTemplateMixin)
                        ---@diagnostic disable-next-line: undefined-field
                        GameTooltip:SetBackdrop({
                            bgFile = "Interface\\AddOns\\OldGods\\Textures\\tooltipbg.tga",
                            edgeFile = "Interface\\AddOns\\OldGods\\Textures\\myBorder.tga",
                            tile = false,
                            tileSize = 16,
                            edgeSize = 4,
                            insets = { left = 0, right = 0, top = 0, bottom = 0 },
                        })
                        ---@diagnostic disable-next-line: undefined-field
                        GameTooltip:SetBackdropColor(.45, .55, .75, .457)
                        ---@diagnostic disable-next-line: undefined-field
                        GameTooltip:SetBackdropBorderColor(1, 1, 1, 1)
                        GameTooltip.hasCustomBackdrop = true
                    end
                    GameTooltip:Show()
                    if not OG_clickedSoundPlayed then
                        PlaySoundFile(1391166, "Master")
                        OG_clickedSoundPlayed = true --set global variable to true, only PlaySoundFile once per session
                    end
                else
                    print("No tooltip data for player:", normalizedSender)
                end
            end
        end

        editBox:SetScript("OnHyperlinkLeave", function()
            GameTooltip:Hide()
            if not OG_leaveSoundPlayed then
                PlaySoundFile(5834619, "Master")
                OG_leaveSoundPlayed = true -- ok once per session i spoiled you guys
            end
        end)
    end)

    scrollFrame:SetScrollChild(editBox)
    GuildChatWindow.editBox = editBox

    local resizeButton = CreateFrame("Button", "OVERLAY", GuildChatWindow)
    resizeButton:SetSize(24, 24)
    resizeButton:SetPoint("BOTTOMRIGHT")
    resizeButton:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
    resizeButton:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
    resizeButton:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
    resizeButton:SetScript("OnMouseDown", function()
        GuildChatWindow:StartSizing()
    end)
    resizeButton:SetScript("OnMouseUp", function()
        GuildChatWindow:StopMovingOrSizing()
    end)

    -- Add Highlight All button
    local copyButton = CreateFrame("Button", "OVERLAY", GuildChatWindow, "BackdropTemplate")
    copyButton:SetSize(120, 25)
    copyButton:SetPoint("BOTTOMRIGHT", GuildChatWindow, "BOTTOM", -65, 10)
    copyButton:SetText("Select All")
    copyButton:SetNormalFontObject("GameFontNormal")
    copyButton:SetHighlightFontObject("GameFontHighlight")
    copyButton:SetPushedTexture(5926319)
    copyButton:SetScript("OnClick", function()
        if OldGodsDB.soundEnabled then
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert6.mp3")
        end
        editBox:HighlightText()
        editBox:SetFocus()
        print(CreateAtlasMarkup("LevelUp-Icon-Book", 24, 24), "Press Control + C to copy")
    end)

    -- Add Save & Clear button
    local SaveClearButton = CreateFrame("Button", nil, GuildChatWindow, "BackdropTemplate")
    SaveClearButton:SetSize(120, 25)
    SaveClearButton:SetPoint("BOTTOMRIGHT", GuildChatWindow, "BOTTOM", 65, 10)
    SaveClearButton:SetText("Save & Clear")
    SaveClearButton:SetNormalFontObject("GameFontNormal")
    SaveClearButton:SetHighlightFontObject("GameFontHighlight")
    SaveClearButton:SetPushedTexture(5926319)
    SaveClearButton:SetSize(120, 25)
    SaveClearButton:SetScript("OnClick", function()
        if type(OG_ChatMessageTable) == "table" then
            local SaveMessage = saveDateMessage(OGsavedChat)
            table.insert(OG_ChatMessageTable, SaveMessage)

            for _, message in ipairs(OG_ChatMessageTable) do
                if not tContains(OGsavedChat, message) then
                    table.insert(OGsavedChat, message)
                end
            end

            SavedChatHistoryWindow:Show()
            local updatedTitle = UpdateChatHistoryTitle(OGsavedChat)

            C_Timer.After(0.1, function()
                updateTargetEditBoxText(SavedChatHistoryWindow.editBox, OGsavedChat)
                SavedChatHistoryWindow.title:SetText(updatedTitle)
            end)

            wipe(OG_ChatMessageTable)
            OG_ChatMessageTable = {}

            local SaveMessage = saveDateMessage(OG_ChatMessageTable)
            table.insert(OG_ChatMessageTable, SaveMessage)

            C_Timer.After(0.1, function()
                updateTargetEditBoxText(GuildChatWindow.editBox, OG_ChatMessageTable)
            end)
        end
    end)

    -- Create the toggle button
    local toggleGuildChatWindow = true
    local toggleButton = CreateFrame("Button", "toggleButton", UIParent, "BackdropTemplate")
    toggleButton:SetSize(120, 30)
    toggleButton:SetPoint("CENTER", UIParent) -- Initially center the button on the screen
    toggleButton:SetText("Toggle Chat")
    toggleButton:SetNormalFontObject("GameFontNormal")
    toggleButton:SetHighlightFontObject("GameFontHighlight")
    toggleButton:SetMovable(true)
    toggleButton:EnableMouse(true)
    toggleButton:RegisterForDrag("LeftButton")
    toggleButton:SetPushedTexture(5926319)
    toggleButton:SetScript("OnDragStart", toggleButton.StartMoving)
    toggleButton:SetScript("OnDragStop", toggleButton.StopMovingOrSizing)
    toggleButton:SetScript("OnEnter", function(self, _)
        GameTooltip:SetOwner(UIParent, "ANCHOR_BOTTOM")
        GameTooltip:AddLine("Drag Me!")
        GameTooltip:AddLine("it's easy to position", .45, .895, 0)
        GameTooltip:AddLine("This button toggles the Guild Chat window, " ..
            "the window does not popup when toggled, " ..
            "ideal for serious gaming!", .895, .895, .905, true)
        GameTooltip:Show()
    end)
    toggleButton:SetScript("OnLeave", function(self, _)
        GameTooltip:Hide()
    end)
    toggleButton:SetScript("OnClick", function()
        toggleGuildChatWindow = not toggleGuildChatWindow -- Flip the toggle state
        toggleButton:SetText(toggleGuildChatWindow and "Hide Chat" or "Show Chat")
        if toggleGuildChatWindow then
            if OldGodsDB.soundEnabled then
                PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert7.mp3")
            end
            GuildChatWindow:Show()
        else
            if OldGodsDB.soundEnabled then
                PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-close-alert2.mp3")
            end
            GuildChatWindow:Hide()
        end
    end)

    -- Add Close button, the X in the top right corner
    local topRightCloseButton = CreateFrame("Button", nil, GuildChatWindow, "BackdropTemplate")
    topRightCloseButton:SetSize(17, 17)
    topRightCloseButton:SetPoint("TOPRIGHT", GuildChatWindow, "TOPRIGHT", -4, -4)
    topRightCloseButton:SetNormalFontObject("GameFontNormal")
    topRightCloseButton:SetHighlightFontObject("GameFontHighlight")
    topRightCloseButton:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
    topRightCloseButton:SetText("X")
    local FrameBackdrop = {
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        tile = false,
        tileSize = 0,
        edgeSize = 2,
        insets = {
            left = 2,
            right = 2,
            top = 2,
            bottom = 2
        }
    }
    topRightCloseButton:SetBackdrop(FrameBackdrop)
    topRightCloseButton:SetBackdropColor(0.204, 0.227, 0.329, 1)
    topRightCloseButton:SetBackdropBorderColor(0.741, 0.176, 0.176, 0.761)
    topRightCloseButton:SetScript("OnClick", function()
        toggleGuildChatWindow = not toggleGuildChatWindow -- Flip the toggle state
        toggleButton:SetText(toggleGuildChatWindow and "Hide Chat" or "Show Chat")
        if toggleGuildChatWindow then
            GuildChatWindow:Show() -- this is the same as the toggleButton:OnClick function but it will never be called
        else
            if OldGodsDB.soundEnabled then
                PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-close-alert2.mp3")
            end
            GuildChatWindow:Hide()
        end
    end)

    local optionsButton = CreateFrame("Button", "optionsButton", GuildChatWindow, "BackdropTemplate")
    optionsButton:SetSize(120, 25)
    optionsButton:SetPoint("BOTTOMRIGHT", GuildChatWindow, "BOTTOM", 195, 10)
    optionsButton:SetText("Options")
    optionsButton:SetNormalFontObject("GameFontNormal")
    optionsButton:SetHighlightFontObject("GameFontHighlight")
    optionsButton:EnableMouse(true)
    optionsButton:SetPushedTexture(5926319)

    local fastOptionsMenuZone = CreateFrame("Button", "fastOptionsMenuZone", optionsButton, "BackdropTemplate")
    fastOptionsMenuZone:SetPoint("BOTTOMRIGHT", optionsButton)
    fastOptionsMenuZone:SetSize(10, 10)
    local FrameBackdrop = {
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        tile = false,
        tileSize = 0,
        edgeSize = 2,
        insets = {
            left = 0,
            right = 0,
            top = 0,
            bottom = 0
        }
    }
    fastOptionsMenuZone:SetBackdrop(FrameBackdrop)
    fastOptionsMenuZone:SetBackdropColor(0, 1, 0, 0.655)
    fastOptionsMenuZone:SetBackdropBorderColor(0.5, 0.5, 0.15, 1)
    fastOptionsMenuZone:EnableMouse(true)

    GuildChatWindow.CustomFastOptionsZone = { fastOptionsMenuZone }
    GuildChatWindow.buttons = { copyButton, SaveClearButton, optionsButton, toggleButton }

    local inputBox = CreateFrame("EditBox", nil, GuildChatWindow, "InputBoxTemplate")
    inputBox:SetSize(400, 35)
    inputBox:SetPoint("BOTTOM", GuildChatWindow, "BOTTOM", 0, 35) -- Position relative to the parent frame
    inputBox:SetAutoFocus(false)                                  -- Prevent auto-focusing the input box
    inputBox:EnableMouse(true)
    inputBox:SetHyperlinksEnabled(true)
    inputBox:SetMaxLetters(3999) -- Set the maximum number of characters I seen this in a movie once
    inputBox:SetScript("OnMouseDown", function(self)
        self:SetFocus()          -- Ensure inputBox is focused
    end)

    --The magic hooksecurefunc we need to learn more about this, used again in the mail manager with some changes
    hooksecurefunc("ChatEdit_InsertLink", function(link)
        if link and inputBox:HasFocus() then
            inputBox:Insert(link) -- Insert the item link into the inputBox
            return true
        end
    end)

    StaticPopupDialogs["OLDGODS_FILTER_BYPASS"] = {
        text = "|TInterface\\AddOns\\OldGods\\Textures\\chat_alert.tga:64:64:0|t Reconsider your message.\n" ..
            "Your message was blocked due to offensive language. consider WoW TOS and guild rules!\n\nDo you want to bypass the filter and send it anyway?",
        button1 = "Send Anyway", -- left button
        button2 = "Do Not Send", -- right button
        OnAccept = function(self, data)
            -- data carries the original message
            if data and data ~= "" then
                C_ChatInfo.SendChatMessage(data, "GUILD")
            end
        end,
        OnCancel = function(_, _) end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3, -- avoid conflicts with other addons
    }

    -- Handle the Enter key pressed
    inputBox:SetScript("OnEnterPressed", function(self)
        local message = self:GetText() -- Get the user's input
        local isShiftDown = IsShiftKeyDown()

        if IsMessageFiltered(message) then
            StaticPopup_Show("OLDGODS_FILTER_BYPASS", nil, nil, isShiftDown and fancyTransform(message) or message)
            return
        end

        -- Transform the text if Shift is held
        local finalMessage = isShiftDown and fancyTransform(message) or
            message --fancyTransform() turns the message into 1337 speak ;) little easter egg

        if finalMessage and finalMessage ~= "" then
            -- Check if the input is a slash command
            if message:sub(1, 1) == "/" then
                local command = message:lower():match("^/(%S+)")
                if command == "reload" then
                    ChatFrame1EditBox:Show()
                    ChatFrame1EditBox:SetText("/reload")
                    ChatFrame1EditBox:SetFocus()
                    print("Press Enter to reload your UI.")
                elseif command == "afk" then
                    ChatFrame1EditBox:Show()
                    ChatFrame1EditBox:SetText("/afk")
                    ChatFrame1EditBox:SetFocus()
                    print("Press Enter to confirm /afk status.")
                elseif command == "ogg" then
                    ChatFrame1EditBox:Show()
                    ChatFrame1EditBox:SetText("/og guild ") --slash command defined in the Slash Commands region
                    ChatFrame1EditBox:SetFocus()
                    print(
                        "Enter message # then press Enter.\n" ..
                        "|cFF00F0FF[|r1|cFF00F0FF]|r-|cFF00FF00Welcome Message & Discord Info|r\n" ..
                        "|cFF00F0FF[|r2|cFF00F0FF]|r-|cFFF0F002Notify|r Purge Alert\n" ..
                        "|cFF00F0FF[|r3|cFF00F0FF]|r-|cFFF0F002Notify|r Purge Complete|r\n"
                    )
                elseif command == "oghelp" then
                    ChatFrame1EditBox:Show()
                    ChatFrame1EditBox:SetText("/OGHELP") --slash command defined in the Slash Commands region
                    ChatFrame1EditBox:SetFocus()
                    print("Press Enter to open Help Menu.")
                elseif command == "joke" then
                    ChatFrame1EditBox:Show()
                    ChatFrame1EditBox:SetText("/OG JOKE") --slash command defined in the Slash Commands region
                    ChatFrame1EditBox:SetFocus()
                    print("Press Enter to send a Random Dad Joke!")
                elseif command == "quote" then
                    ChatFrame1EditBox:Show()
                    ChatFrame1EditBox:SetText("/OG QUOTE")                  --slash command defined in the Slash Commands region
                    ChatFrame1EditBox:SetFocus()
                    print("Press Enter for to send a Random Famous Quote!") -- lol for to, im leaving it
                elseif command == "ognote" then
                    ChatFrame1EditBox:Show()
                    ChatFrame1EditBox:SetText("/ognote ") --slash command defined in the Slash Commands region
                    ChatFrame1EditBox:SetFocus()
                    print(
                        "[OG]: |TInterface\\AddOns\\OldGods\\Textures\\Information.tga:16:16:0|t Encrypted Notes.\n" ..
                        CreateAtlasMarkup("adventureguide-icon-whatsnew", 18, 18),
                        "Enter a descriptive name for a new note: |cFF00F002ie. /ognote Secrets|r\n" ..
                        CreateAtlasMarkup("adventureguide-icon-whatsnew", 18, 18),
                        "To view or edit an existing note enter the name: |cFF00F002ie. /ognote GoldFarm|r\n")
                end
            else
                -- Send the final message (fancytransformed, bypassed or normal) to guild chat
                C_ChatInfo.SendChatMessage(finalMessage, "GUILD")
            end
            self:SetText("")                                                                                        -- Clear the input box after processing
        else
            print("|TInterface\\AddOns\\OldGods\\Textures\\chat_alert.tga:16:16:0|t Cannot send an empty message.") -- Error for empty input
        end
    end)

    -- Enforce size limits  during resizing
    GuildChatWindow:SetScript("OnSizeChanged", function(self, width, height)
        local minWidth, minHeight = 524, 260 -- Minimum size for the frame to keep it from clipping icon and buttons
        local maxWidth, maxHeight = 872, 640 -- Maximum size for the frame we dont want to go fullscreen, yet ;)

        -- Clamping trick! Keeps 'width' from going out of bounds.
        -- First, shrink it down if it's too big (math.min).
        -- Then, bump it up if it's too small (math.max).
        -- The final safe value is stored back in 'width'.
        width = math.max(minWidth, math.min(maxWidth, width))
        -- Same trick for 'height'.
        height = math.max(minHeight, math.min(maxHeight, height))
        self:SetSize(width, height)

        cristaFrame:SetSize(width - 41, height - 111) --adjust the border around the editBox, hack solved text clipping
        scrollFrame:SetSize(width - 45, height - 115) --adjust the scrollFrame to fit the new size
        editBox:SetSize(width - 45, height - 115)     --adjust the editBox to fit the new size
        editBox:ClearAllPoints()                      --clear the editBox points
        editBox:SetPoint("TOPLEFT", scrollFrame)      --and set them dynamically to the scrollFrame as size changes
        editBox:SetPoint("BOTTOMRIGHT", scrollFrame)

        scrollFrame:SetVerticalScroll(scrollFrame:GetVerticalScrollRange()) -- Scroll to the bottom after resizing
    end)

    ApplyFont(GuildChatWindow.editBox, OG_Fonts["Roboto"])
    return GuildChatWindow
end


-- Initialize GuildChatWindow
local GuildChatWindow = CreateGuildChatWindow("|T986486:18:18:0|t Collecting data...") -- Default title shows before the update function is triggered
GuildChatWindow:Show()
--#endregion

--#region UpdateGuildChatWindowTitle
local ogGuildTitle = CreateFrame("Frame")
ogGuildTitle:RegisterEvent("GUILD_ROSTER_UPDATE")

local function UpdateGuildChatWindowTitle()
    if not GuildChatWindow or not GuildChatWindow.title or not GuildChatWindow:IsShown() then
        return
    end

    local guildName, _, _, _ = GetGuildInfo("player")                        -- Get player's guild name
    local numTotalGuildMembers, numOnlineGuildMembers = GetNumGuildMembers() -- Get guild member counts

    if not guildName or not numTotalGuildMembers or not numOnlineGuildMembers then
        return
    end

    local newTitle = string.format(
        "%s |cFF91a3b0[|r|cFFA0FF07%d|r |cFF91a3b0of|r |cFF5ea3f2%d|r|cFF91a3b0]|r |TInterface\\AddOns\\OldGods\\Textures\\onlineMembers.tga:10:10:0|t",
        guildName, numOnlineGuildMembers, numTotalGuildMembers)
    GuildChatWindow.title:SetText(newTitle)
end

local lastkUP = 0 -- Timestamp tracking

ogGuildTitle:SetScript("OnEvent", function(self, event)
    if event == "GUILD_ROSTER_UPDATE" then
        local kUPnow = GetTime()
        if kUPnow - lastkUP > 11 then
            if IsInGuild() then
                UpdateGuildChatWindowTitle()
                lastkUP = kUPnow
            end
        end
    end
end)
--#endregion

--#region Cache Roster Track Changes
local rosterChanges = CreateFrame("Frame")
rosterChanges:RegisterEvent("GUILD_ROSTER_UPDATE")
local isUpdatingRoster = false
local zoneDataSpam = true

local function CacheGuildRoster()
    -- Prevent recursive updates (Flag Check)
    if isUpdatingRoster then
        print("|cFFFF0000Condition 2|r")
        return
    end
    isUpdatingRoster = true

    wipe(OG_TrackGuildRoster)
    C_GuildInfo.GuildRoster()
    for i = 1, GetNumGuildMembers() do
        local name, rankName, _, level, _, zone, publicNote, officerNote, isOnline = GetGuildRosterInfo(i)

        -- Ensure 'zone' is never nil
        zone = zone or "Unknown Zone"
        if name and isOnline then
            OG_TrackGuildRoster[name] = {
                rankName = rankName,
                level = level,
                zone = zone,
                publicNote = publicNote,
                officerNote = officerNote,
                isOnline = isOnline,
            }
        end
    end

    isUpdatingRoster = false
end


local function CheckGuildRosterChanges()
    if not OG_TrackGuildRoster then
        CacheGuildRoster()
    end

    for i = 1, GetNumGuildMembers() do
        local name, rankName, _, level, class, zone, publicNote, officerNote, isOnline = GetGuildRosterInfo(i)
        zone = zone or "Unknown"
        name = name or "Unknown"
        local previous = OG_TrackGuildRoster[name]
        local classColor = GetClassColor(class)
        local shortName = Ambiguate(name, "guild")

        if previous and isOnline then
            local oldrankName = previous.rankName or "Initializer"
            local oldlevel = previous.level or "Initializer"
            local oldZone = previous.zone or "Unknown Zone"
            local oldpublicNote = previous.publicNote or "Initializer"
            local oldofficerNote = previous.officerNote or "Initializer"
            local hyperlinkName = "|Hplayer:" ..
                name .. "|h|r|cFFFFFFFF[|r|cFF" .. classColor .. shortName .. "|r|cFFFFFFFF]|r|h"

            if oldrankName ~= rankName then
                PlaySound(170271)
                DEFAULT_CHAT_FRAME:AddMessage(
                    "[OG]: |TInterface\\AddOns\\OldGods\\Textures\\rankChange.tga:16:16:0|t Rank change: " ..
                    hyperlinkName ..
                    "\nFrom: |cffF0F000" .. oldrankName .. "|r" .. " To: |cff01FF01" .. rankName .. "|r")
                previous.rankName = rankName
            end
            if oldlevel ~= level then
                PlaySound(170271)
                DEFAULT_CHAT_FRAME:AddMessage(
                    "[OG]: |TInterface\\AddOns\\OldGods\\Textures\\levelChange.tga:16:16:0|t Level Up: " ..
                    hyperlinkName ..
                    "\nFrom: |cffF0F000" .. oldlevel .. "|r" .. " To: |cff01FF01" .. level .. "|r")
                previous.level = level
            end
            if oldZone ~= zone and zoneDataSpam then
                DEFAULT_CHAT_FRAME:AddMessage(
                    "[OG]: |TInterface\\AddOns\\OldGods\\Textures\\zoneChange.tga:16:16:0|t  Zone Change: " ..
                    hyperlinkName ..
                    "\n|c9fc4f9d9From|r: |cFFF0F000" .. oldZone .. "|r" .. " |c9fc4f9d9To|r: |cff01FF01" .. zone .. "|r")
                previous.zone = zone
            end
            if oldpublicNote ~= publicNote then
                PlaySound(170271)
                DEFAULT_CHAT_FRAME:AddMessage(
                    "[OG]: |TInterface\\AddOns\\OldGods\\Textures\\Information.tga:16:16:0|t Public Note Changed: " ..
                    hyperlinkName ..
                    "\nFrom: |cffF0F000" .. oldpublicNote .. "|r" .. " To: |cff01FF01" .. publicNote .. "|r")
                previous.publicNote = publicNote
            end
            if oldofficerNote ~= officerNote then
                PlaySound(170271)
                DEFAULT_CHAT_FRAME:AddMessage(
                    "[OG]: |TInterface\\AddOns\\OldGods\\Textures\\Information.tga:16:16:0|t Officer Note Changed: " ..
                    hyperlinkName ..
                    "\nFrom: |cffF0F000" .. oldofficerNote .. "|r" .. " To: |cff01FF01" .. officerNote .. "|r")
                previous.officerNote = officerNote
            end
        end
    end
    C_Timer.After(10, CacheGuildRoster)
end

--CacheGuildRoster() moving to intializeTheme to call function after addon loads

local function PopulateEmptyGuildNotes()
    for i = 1, GetNumGuildMembers() do
        local name, _, _, _, _, _, playerNote, officerNote = GetGuildRosterInfo(i)

        if name then
            local shortName = Ambiguate(name, "guild")

            -- Update player note if empty
            if playerNote == "" or not playerNote then
                GuildRosterSetPublicNote(i, shortName .. " - main")
            end

            -- Update officer note if empty
            if officerNote == "" or not officerNote then
                local currentDate = "Joined: " .. tostring(date("%m/%d/%y"))
                GuildRosterSetOfficerNote(i, currentDate)
            end
        end
    end
end


rosterChanges:SetScript("OnEvent", function(self, event)
    if event == "GUILD_ROSTER_UPDATE" then
        CheckGuildRosterChanges()
        --PopulateEmptyGuildNotes() -- Populate empty notes (this was the cause of crashing in peoples addons that were not officers in the guild ) cant leave it in, I use it every other week just once to fill in data
    end
end)
--#endregion Cache Roster Track Changes

--#region Encryption By ChatGPT https://openai.com/index/introducing-chatgpt-pro/
OG_EncryptedNotes = OG_EncryptedNotes or {} -- SavedVariables table
local userKey = nil                         -- Temporary encryption key (deleted on close)
local currentPlayer = nil                   -- Tracks which player’s note is open

-- XOR Encryption Function
local function XORCipher(input, key)
    local result = {}
    for i = 1, #input do
        local byte = input:byte(i)
        local keyByte = key:byte(((i - 1) % #key) + 1) -- Cycle through key bytes
        table.insert(result, string.char(bit.bxor(byte, keyByte)))
    end
    return table.concat(result)
end

-- Prompt User for Encryption Key
local function PromptUserForKey(callback)
    local KeyFrame = CreateFrame("Frame", "OG_EncryptionFrame", UIParent, "BackdropTemplate")
    KeyFrame:SetSize(250, 80)
    KeyFrame:SetPoint("CENTER")
    KeyFrame:SetBackdrop({ bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background" })

    local KeyInput = CreateFrame("EditBox", "OG_KeyInput", KeyFrame, "InputBoxTemplate")
    KeyInput:SetSize(200, 30)
    KeyInput:SetPoint("TOP", KeyFrame, "TOP", 0, -10)
    KeyInput:SetAutoFocus(false)

    local SetKeyButton = CreateFrame("Button", "OG_SetKeyButton", KeyFrame, "UIPanelButtonTemplate")
    SetKeyButton:SetSize(80, 25)
    SetKeyButton:SetPoint("BOTTOM", KeyFrame, "BOTTOM", 0, 10)
    SetKeyButton:SetText("Set Key")

    SetKeyButton:SetScript("OnClick", function()
        local key = KeyInput:GetText()
        if key and #key >= 6 then
            userKey = key
            print("|cFF00FF00[OldGods]|r Encryption Key Set!")
            KeyFrame:Hide()

            -- Run the callback function after the key is set
            if callback then
                callback()
            end
        else
            print("|cFFFF0000[OldGods]|r Key must be at least 6 characters.")
        end
    end)

    KeyFrame:Show() -- Make sure it's actually visible!
end

-- Save Encrypted Note
local function SaveEncryptedNote()
    if not userKey then
        print(CreateAtlasMarkup("Ping_Chat_Warning", 18, 18),
            "Create a password to continue\n This is not saved and if lost or forgotten\n you will not be able to access or edit this note.\n Write it down, you can use the same password for many notes.")
        PromptUserForKey(function()
            SaveEncryptedNote() -- Retry saving after key is set
        end)
        return
    end
    if not currentPlayer then
        print("|cFFFF0000[OldGods]|r No player selected!")
        return
    end

    local note = EncryptedPlayerNotpad.editBox:GetText()
    if note and note ~= "" then
        OG_EncryptedNotes[currentPlayer] = XORCipher(note, userKey)
        print(CreateAtlasMarkup("UI-CharacterCreate-PadLock", 19, 28),
            "Note " .. currentPlayer .. " has been encrypted and saved")
    else
        print("|cFFFF0000[OldGods]|r Cannot save an empty note!")
    end
end

-- Load and Decrypt Note
local function LoadDecryptedNote()
    if not currentPlayer then
        print("|cFFFF0000[OldGods]|r No player selected!")
        return ""
    end

    local encryptedNote = OG_EncryptedNotes[currentPlayer]
    if not encryptedNote then
        print("|cFFFF0000[OldGods]|r No note found for " .. currentPlayer)
        return ""
    end

    -- If userKey is missing, prompt for it first
    if not userKey then
        print(CreateAtlasMarkup("Ping_Chat_Warning", 18, 18),
            "Create a password to continue\n This is not saved and if lost or forgotten\n you will not be able to access or edit this note.\n Write it down, you can use the same password for many notes.")
        PromptUserForKey(function()
            -- Once key is entered, retry loading the note
            EncryptedPlayerNotpad.editBox:SetText(LoadDecryptedNote())
        end)
        return ""
    end

    -- Decrypt the note
    return XORCipher(encryptedNote, userKey)
end

-- Create Encrypted Notepad UI
local function CreateEncryptedPlayerNotepad()
    local frame = CreateFrame("Frame", "EncryptedPlayerNotpad", UIParent, "BasicFrameTemplateWithInset")
    frame:SetSize(430, 300)
    frame:SetPoint("LEFT", UIParent, "LEFT", 0, 200)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)

    -- Title
    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    frame.title:SetPoint("TOP", frame, "TOP", 0, -5)
    frame.title:SetText("Encrypted Notepad")

    -- Scrollable Edit Box
    local scrollFrame = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
    scrollFrame:SetSize(365, 210)
    scrollFrame:SetPoint("TOP", frame, "TOP", 0, -30)

    local editBox = CreateFrame("EditBox", nil, scrollFrame)
    editBox:SetMultiLine(true)
    editBox:SetFontObject(GameFontHighlightLarge)
    editBox:SetTextInsets(1, 1, 1, 1)
    editBox:SetWidth(360)
    editBox:SetHeight(205)
    editBox:SetAutoFocus(true)
    scrollFrame:SetScrollChild(editBox)

    -- Save Note Button
    local saveButton = CreateFrame("Button", nil, frame, "GameMenuButtonTemplate")
    saveButton:SetSize(120, 30)
    saveButton:SetPoint("BOTTOM", frame, "BOTTOM", 0, 10)
    saveButton:SetText("Save Note")
    saveButton:SetScript("OnClick", SaveEncryptedNote)

    -- Close Button
    local closeButton = CreateFrame("Button", nil, frame, "GameMenuButtonTemplate")
    closeButton:SetSize(120, 30)
    closeButton:SetPoint("BOTTOMRIGHT", frame, "BOTTOM", 205, 10)
    closeButton:SetText("Close")
    closeButton:SetScript("OnClick", function()
        frame:Hide()
        userKey = nil -- Clear key on close for security
        EncryptedPlayerNotpad.editBox:SetText("")
        print("|cFFFF0000[OldGods]|r Encryption key removed from memory.")
    end)

    frame.editBox = editBox
    return frame
end

-- Open Encrypted Notepad for a Player
local function OpenEncryptedNotepad(playerName)
    if not EncryptedPlayerNotpad then
        EncryptedPlayerNotpad = CreateEncryptedPlayerNotepad()
    end

    currentPlayer = playerName
    EncryptedPlayerNotpad.title:SetText("Note: " .. playerName)

    -- Ensure key is set before attempting to decrypt
    if not userKey then
        print(CreateAtlasMarkup("Ping_Chat_Warning", 18, 18),
            "Enter the password for this note.\nPasswords are not saved, you will not be able to access or edit this note without it.\n Write the password down, you can use the same password for different notes, the password is used as the encryption key.")
        PromptUserForKey(function()
            -- Retry loading note after key is set
            EncryptedPlayerNotpad.editBox:SetText(LoadDecryptedNote())
        end)
    else
        -- If key is already set, load note immediately
        EncryptedPlayerNotpad.editBox:SetText(LoadDecryptedNote())
    end

    EncryptedPlayerNotpad:Show()
end

-- Slash Command to Open Notepad (This is undocumented but functional I still have more to do be its a known function)
SLASH_OGNOTE1 = "/ognote"
SlashCmdList["OGNOTE"] = function(msg)
    local playerName = msg:match("^(%S+)")
    if playerName then
        OpenEncryptedNotepad(playerName)
    else
        print("|cFFFF0000[OldGods]|r Usage: /ognote <playerName>")
    end
end
--#endregion

--#region ModifyMenu
local function ModMenu_RankGuild_Up(contextData)
    if not contextData or not contextData.name then
        print("Old Gods: No player found to promote.")
        return
    end

    local targetPlayer = contextData.name .. "-" .. contextData.server

    if CanGuildPromote() then
        -- Ensure we always get the full player name
        local macroName = "OG_Promote"
        local macroIcon = 134238
        local macroText = "/gpromote " .. targetPlayer
        local macroIndex = GetMacroIndexByName(macroName)
        local keyBind = "F6"

        -- Check if macro exists, else create/update it
        if macroIndex == 0 then
            C_Timer.After(0.1, function()
                if GetNumMacros() < MAX_ACCOUNT_MACROS then
                    CreateMacro(macroName, macroIcon, macroText, nil)
                    -- **Ensure message is printed if `/gpromote` is detected**
                    if string.find(macroText, "/gpromote") then
                        print(
                            "[OG]: |TInterface\\AddOns\\OldGods\\Textures\\Information.tga:16:16|t Macro Created!")
                        DEFAULT_CHAT_FRAME:AddMessage("[OG]: " ..
                            targetPlayer ..
                            " staged for promotion |TInterface\\AddOns\\OldGods\\Textures\\levelChange.tga:16:16|t")
                        print("[OG]: Press " .. keyBind .. " for action on " .. targetPlayer)
                        UIErrorsFrame:AddMessage(
                            "|T516767:32:32|t Secure Action Bound" .. "\nPress [" .. keyBind .. "] to execute.", 1.0, 1.0,
                            0.0, 1, 5)
                    end
                else
                    print(
                        "|cFF0000FF<|rOldGods|cFF0000FF>|r |cFFC8C800ATTENTION|r - Maximum number of macros reached.|r")
                    return
                end
            end)
        else
            -- Update existing macro
            EditMacro(macroIndex, macroName, macroIcon, macroText)
            -- **Ensure message is printed if `/gpromote` is detected**
            if string.find(macroText, "/gpromote") then
                print("[OG]: |TInterface\\AddOns\\OldGods\\Textures\\Information.tga:16:16|t Macro Updated!")
                DEFAULT_CHAT_FRAME:AddMessage("[OG]: " ..
                    targetPlayer ..
                    " staged for promotion |TInterface\\AddOns\\OldGods\\Textures\\levelChange.tga:16:16|t")
                print("[OG]: Press " .. keyBind .. " for action on " .. targetPlayer)
                UIErrorsFrame:AddMessage(
                    "|T516767:32:32|t Secure Action Bound" .. "\nPress [" .. keyBind .. "] to execute.", 1.0, 1.0, 0.0, 1,
                    5)
            end
        end

        -- Bind macro to key
        C_Timer.After(0.2, function()
            if keyBind and keyBind ~= "" and macroIndex > 0 then
                SetBindingMacro(keyBind, macroIndex)
                SaveBindings(GetCurrentBindingSet())
            end
        end)
    end
end


local function ModMenu_SendGuild_Invite(contextData)
    if not contextData or not contextData.name then
        print("Old Gods: No player found to invite.")
        return
    end

    local targetPlayer = contextData.name
    if CanGuildInvite() then
        C_GuildInfo.Invite(targetPlayer)
        print("Old Gods: Guild invite sent to " .. targetPlayer .. "!")
    else
        print("Old Gods: You do not have guild invite permissions.")
    end
end

local function CopiedNameTrickframe(CopiedName)
    local FrameBackdrop = {
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        tile = false,
        tileSize = 0,
        edgeSize = 2,
        insets = {
            left = 2,
            right = 2,
            top = 2,
            bottom = 2
        }
    }

    local trickFrame = CreateFrame("EditBox", "trickFrame", UIParent, "BackdropTemplate")
    trickFrame:SetPoint("CENTER", UIParent)
    trickFrame:SetSize(190, 30) -- Resized for a single-line input
    trickFrame:SetFrameStrata("TOOLTIP")
    trickFrame:SetFontObject("GameFontNormal")
    trickFrame:SetBackdrop(FrameBackdrop)
    trickFrame:SetBackdropColor(0.204, 0.227, 0.329, 1)
    trickFrame:SetBackdropBorderColor(0.741, 0.176, 0.176, 0.761)

    -- Enable mouse interaction
    trickFrame:EnableMouse(true)

    -- EditBox properties
    trickFrame:SetMultiLine(false)
    trickFrame:SetAutoFocus(false)
    trickFrame:SetTextInsets(5, 5, 0, 0) -- Prevents text clipping
    trickFrame:SetText(CopiedName)

    -- Highlight text & play a sound on show
    trickFrame:SetScript("OnMouseDown", function(self)
        self:SetText(CopiedName)
        self:SetFocus()
        UIErrorsFrame:AddMessage("Press CTRL+C to Copy!", 1.0, 1.0, 0.0, 1, 5)
        if OldGodsDB.soundEnabled then
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert6.mp3")
        end
        C_Timer.After(0.1, function()
            self:HighlightText(0, -1)
        end)
    end)

    local trickButton = CreateFrame("Button", nil, trickFrame, "BackdropTemplate")
    trickButton:SetPoint("RIGHT", trickFrame, -5, 0)
    trickButton:SetSize(20, 20)
    trickButton:SetNormalTexture("Interface\\AddOns\\OldGods\\Textures\\Delete.tga")
    trickButton:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
    trickButton:SetFrameStrata("TOOLTIP")
    trickButton:SetBackdrop(FrameBackdrop)
    trickButton:SetBackdropColor(0.204, 0.227, 0.329, 1)
    trickButton:SetBackdropBorderColor(0.741, 0.176, 0.176, 0.761)

    trickButton:SetScript("OnClick", function()
        if OldGodsDB.soundEnabled then
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-close-alert2.mp3")
        end
        trickFrame:Hide()
    end)

    trickFrame:Show() -- Ensure it appears
end

local function ArmoryLinkLoL(CopiedNameLink)
    local FrameBackdrop = {
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        tile = false,
        tileSize = 0,
        edgeSize = 2,
        insets = {
            left = 2,
            right = 2,
            top = 2,
            bottom = 2
        }
    }

    local linkFrame = CreateFrame("EditBox", "linkFrame", UIParent, "BackdropTemplate")
    linkFrame:SetPoint("CENTER", UIParent)
    linkFrame:SetSize(520, 36) -- Resized for a single-line input fits most links in with https:// showing ( safety first )
    linkFrame:SetFrameStrata("TOOLTIP")
    linkFrame:SetFontObject("GameFontNormal")
    linkFrame:SetBackdrop(FrameBackdrop)
    linkFrame:SetBackdropColor(0.204, 0.227, 0.329, 1)
    linkFrame:SetBackdropBorderColor(0.741, 0.176, 0.176, 0.761)

    -- Enable mouse interaction
    linkFrame:EnableMouse(true)

    -- EditBox properties
    linkFrame:SetMultiLine(false)
    linkFrame:SetAutoFocus(false)
    linkFrame:SetTextInsets(3, 3, 3, 3) -- Prevents text clipping
    linkFrame:SetText(CopiedNameLink)

    -- Highlight text & play a sound on show
    linkFrame:SetScript("OnMouseDown", function(self)
        self:SetText(CopiedNameLink)
        self:SetFocus()
        UIErrorsFrame:AddMessage("Press CTRL+C to Copy!", 1.0, 1.0, 0.0, 1, 5)
        print(CreateAtlasMarkup("Battlenet-ClientIcon-WoW", 18, 18), " Press Control+C to Copy Link!") -- this is cute its the WOW logo, theyll give me shit
        if OldGodsDB.soundEnabled then
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert6.mp3")
        end
        C_Timer.After(0.1, function()
            self:HighlightText(0, -1)
        end)
    end)

    linkFrame:SetScript("OnKeyDown", function(self, key)
        if IsControlKeyDown() and key == "C" then
            if OldGodsDB.soundEnabled then
                PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert6.mp3")
            end
            local linkColor = "|cFFaF10bF" .. CopiedNameLink .. "|r\n"
            print(CreateAtlasMarkup("Battlenet-ClientIcon-WoW", 18, 18), "Copied armory link: \n" .. linkColor)
        end
    end)

    local linkButton = CreateFrame("Button", nil, linkFrame, "BackdropTemplate")
    linkButton:SetPoint("RIGHT", linkFrame, -5, 0)
    linkButton:SetSize(32, 32)

    linkButton.tex = linkButton:CreateTexture()
    linkButton.tex:SetPoint("RIGHT", linkFrame, -5, 0)
    linkButton.tex:SetAtlas("adventureguide-redx") -- adventureguide-redx high res X button thank you texture atlas viewer and agian to fizzle it started with a jocular back and forth an turned into something cool
    linkButton.tex:SetSize(31, 31)
    linkButton:SetFrameStrata("TOOLTIP")

    linkButton:SetScript("OnClick", function()
        if OldGodsDB.soundEnabled then
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-close-alert2.mp3")
        end
        linkFrame:Hide()
    end)

    linkFrame:Show() -- Ensure it appears
end

local function ModMenu_CopyNameTrick(contextData)
    if not contextData or not contextData.name then
        print("Old Gods: No player found to copy.")
        return
    end

    -- Ensure we always get the full player name
    local CopiedName = contextData.name
    if contextData.realm and contextData.realm ~= "" then
        CopiedName = CopiedName .. "-" .. contextData.realm
    end

    CopiedNameTrickframe(CopiedName)
end

local function UrlFriendlyRealmName(realm) -- Function to format the return of realm from UnitName("target")
    if not realm then return nil end       -- and GetRealmName() into Blizzards url syntax.
    -- No need for a comparison table we just format in this order

    realm = realm:gsub("([A-Za-z])[Oo][Ff](%u)", "%1-of-%2") -- 1. Puts the -of- in the string                 | "AlterofStorms" to "Atler-of-Storms" |
    realm = realm:gsub("(%l)(%u)", "%1-%2")                  -- 2. Puts the - between lower and uppercase
    realm = realm:gsub("(%l)([0-9])", "%1-%2")               -- 2.1 hahaha Area52 you sneaky bugger
    realm = realm:gsub("\'", "")                             -- 3. Strip the hyphen returning url syntax       | "Kel'Thuzud" to "KelThuzud"          |
    realm = realm:gsub("%s+", "-")                           -- 4. GetRealmName() edgecase " " becomes -       | "Moon Guard" to "Moon-Gaurd"         |

    return
        realm -- 5. return the formated string like a boss, get a beer, do more tests dont push on a friday :}
end


local function ModMenu_GetArmoryLinkTarget(contextData)
    if not contextData then return end -- legacy were not using contextData in this function, if we decide to expand this function well keep it

    local name, realm = UnitName("target")

    if realm then
        realm = UrlFriendlyRealmName(realm) -- not on our realm but needs to be formated
    end

    if not realm or realm == nil then
        realm = GetRealmName()              -- on our realm but may have a space or ' or ie. AlterofStorms so we make it Alter-of-Storms
        realm = UrlFriendlyRealmName(realm) -- so we format it also
    end

    -- realm in both edge cases has been formated by UrlFriendlyRealmName() and returns URL friendly string to use
    CopiedNameLink = "https://worldofwarcraft.blizzard.com/en-us/character/us/" .. realm .. "/" .. name .. "/"
    ArmoryLinkLoL(CopiedNameLink) -- Now we pass the string to the main function and were done!
end

local function ModMenu_GetArmoryLink(contextData)
    if not contextData then
        return
    end

    local CopiedNameLink
    if contextData.server and contextData.server ~= "" then
        local realm = contextData.server
        realm = UrlFriendlyRealmName(realm)
        CopiedNameLink = "https://worldofwarcraft.blizzard.com/en-us/character/us/" ..
            realm .. "/" .. contextData.name .. "/"
    end

    ArmoryLinkLoL(CopiedNameLink) -- so far so good need to test on people from other realms still
end

local OG_ModifyMenuFriend_Buttons = {
    ["Promote Guild Member"] = {
        lfunction = ModMenu_RankGuild_Up,
        icon = "|TInterface\\AddOns\\OldGods\\Textures\\levelChange.tga:18:18|t "
    },
    ["Copy Character Name"] = {
        lfunction = ModMenu_CopyNameTrick,
        icon = "|TInterface\\AddOns\\OldGods\\Textures\\CopyPaste.tga:18:18|t "
    },
    ["Get Armory Link"] = {
        lfunction = ModMenu_GetArmoryLink,
        icon =
        "|TInterface\\FriendsFrame\\UI-FriendsFrame-Link:18:18|t " --[235503]="Interface/FriendsFrame/UI-FriendsFrame-Link",
    },
}

local OG_ModifyMenuPlayer_Buttons = {
    ["Send Guild Invite"] = {
        lfunction = ModMenu_SendGuild_Invite,
        icon = "|TInterface\\AddOns\\OldGods\\Textures\\Invite.tga:18:18|t "
    },
    ["Get Armory Link"] = {
        lfunction = ModMenu_GetArmoryLinkTarget,
        icon = "|TInterface\\FriendsFrame\\UI-FriendsFrame-Link:18:18|t "
    },
    ["Copy Character Name"] = {
        lfunction = ModMenu_CopyNameTrick,
        icon = "|TInterface\\AddOns\\OldGods\\Textures\\CopyPaste.tga:18:18|t "
    },
}

local OG_ModifyMenuEnemyPlayer_Buttons = {
    ["Get Armory Link"] = {
        lfunction = ModMenu_GetArmoryLinkTarget,
        icon = "|TInterface\\FriendsFrame\\UI-FriendsFrame-Link:18:18|t "
    },
}

Menu.ModifyMenu("MENU_UNIT_FRIEND", function(ownerRegion, rootDescription, contextData)
    rootDescription:CreateDivider()
    rootDescription:CreateTitle("Old Gods Options: Friend")
    for bLabel, bData in pairs(OG_ModifyMenuFriend_Buttons) do
        rootDescription:CreateButton(bData.icon .. bLabel, function()
            bData.lfunction(contextData) -- Pass contextData properly
        end)
    end
end)

Menu.ModifyMenu("MENU_UNIT_PLAYER", function(ownerRegion, rootDescription, contextData)
    rootDescription:CreateDivider()
    rootDescription:CreateTitle("Old Gods Options: Player")
    for bLabel, bData in pairs(OG_ModifyMenuPlayer_Buttons) do
        rootDescription:CreateButton(bData.icon .. bLabel, function()
            bData.lfunction(contextData) -- Pass contextData properly
        end)
    end
end)

Menu.ModifyMenu("MENU_UNIT_ENEMY_PLAYER", function(ownerRegion, rootDescription, contextData)
    rootDescription:CreateDivider()
    rootDescription:CreateTitle("Old Gods Options: Player")
    for bLabel, bData in pairs(OG_ModifyMenuEnemyPlayer_Buttons) do
        rootDescription:CreateButton(bData.icon .. bLabel, function()
            bData.lfunction(contextData) -- Pass contextData properly
        end)
    end
end)

--[[local function ModMenu_GetArmoryLink(contextData)
    if not contextData then
        print("Old Gods: No player found to copy.")
        return
    end

    --print("Old Gods: Received contextData:") --leaving this in for later ill cicle back
    --DumpTable(contextData)                   --Player menu is to weird tables in tables and functions in tables Im not worried about it
    --ill show you gCoopy in action its kinda slick
    local CopiedNameLink
    if contextData.server and contextData.server ~= "" then
        CopiedNameLink = "https://worldofwarcraft.blizzard.com/en-us/character/us/" ..
            contextData.server .. "/" .. contextData.name .. "/"
    end

    ArmoryLinkLoL(CopiedNameLink)
end

local OG_ModifyMenuFriend_Buttons = {
    ["Promote Guild Member"] = {
        lfunction = ModMenu_RankGuild_Up,
        icon = "|TInterface\\AddOns\\OldGods\\Textures\\levelChange.tga:18:18|t "
    },
    ["Copy Character Name"] = {
        lfunction = ModMenu_CopyNameTrick,
        icon = "|TInterface\\AddOns\\OldGods\\Textures\\CopyPaste.tga:18:18|t "
    },
    ["Get Armory Link"] = {
        lfunction = ModMenu_GetArmoryLink,
        icon =
        "|TInterface\\FriendsFrame\\UI-FriendsFrame-Link:18:18|t " --[235503]="Interface/FriendsFrame/UI-FriendsFrame-Link",
    },
}

local OG_ModifyMenuPlayer_Buttons = {
    ["Send Guild Invite"] = {
        lfunction = ModMenu_SendGuild_Invite,
        icon = "|TInterface\\AddOns\\OldGods\\Textures\\Invite.tga:18:18|t "
    },
    ["Get Armory Link"] = {
        lfunction = ModMenu_GetArmoryLink,
        icon =
        "|TInterface\\FriendsFrame\\UI-FriendsFrame-Link:18:18|t " --[235503]="Interface/FriendsFrame/UI-FriendsFrame-Link",
    },
}

Menu.ModifyMenu("MENU_UNIT_PLAYER", function(ownerRegion, rootDescription, contextData)
    rootDescription:CreateDivider()
    rootDescription:CreateTitle("Old Gods Options: Player")
    for bLabel, bData in pairs(OG_ModifyMenuPlayer_Buttons) do
        rootDescription:CreateButton(bData.icon .. bLabel, function()
            bData.lfunction(contextData) -- Pass contextData properly
        end)
    end
end)

local OG_ModifyMenuEnemyPlayer_Buttons = {
    ["Get Armory Link"] = {
        lfunction = ModMenu_GetArmoryLink,
        icon =
        "|TInterface\\FriendsFrame\\UI-FriendsFrame-Link:18:18|t "
    },
}

Menu.ModifyMenu("MENU_UNIT_ENEMY_PLAYER", function(ownerRegion, rootDescription, contextData)
    rootDescription:CreateDivider()
    rootDescription:CreateTitle("Old Gods Options: Player")
    for bLabel, bData in pairs(OG_ModifyMenuEnemyPlayer_Buttons) do
        rootDescription:CreateButton(bData.icon .. bLabel, function()
            bData.lfunction(contextData) -- Pass contextData properly
        end)
    end
end)

Menu.ModifyMenu("MENU_UNIT_FRIEND", function(ownerRegion, rootDescription, contextData)
    rootDescription:CreateDivider()
    rootDescription:CreateTitle("Old Gods Options: Friend")
    for bLabel, bData in pairs(OG_ModifyMenuFriend_Buttons) do
        rootDescription:CreateButton(bData.icon .. bLabel, function()
            bData.lfunction(contextData) -- Pass contextData properly
        end)
    end
end)]]
--#endregion ModifyMenu

--#region Grief Mail
local gMailframe = CreateFrame("Frame", "OldGodsMailFrame", UIParent, "BasicFrameTemplateWithInset")
gMailframe:SetSize(380, 460)
gMailframe:SetPoint("CENTER")
gMailframe.title = gMailframe:CreateFontString(nil, "OVERLAY")
gMailframe.title:SetFontObject("GameFontHighlight")
gMailframe.title:SetPoint("TOP", gMailframe, "TOP", 0, -5)
gMailframe.title:SetText("Gmail - Grief Mail Manager")

gMailframe.scroll = CreateFrame("ScrollFrame", "OldGodsMailScroll", gMailframe, "UIPanelScrollFrameTemplate")
gMailframe.scroll:SetSize(360, 285)
gMailframe.scroll:SetPoint("TOP", gMailframe, "TOP", 0, -30)

local content = CreateFrame("Frame", nil, gMailframe.scroll)
content:SetSize(360, 285)
gMailframe.scroll:SetScrollChild(content)

local selectedItemID = nil
local selectedMailIndex = nil
local selectedItemIcon = nil --wtf is this not being used? I dont know, but it was in the original code so I left it info

local selectedDisplay = gMailframe:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
selectedDisplay:SetPoint("BOTTOM", gMailframe, "BOTTOM", 0, 75)
selectedDisplay:SetText("No Item Selected")

local selectedIcon = gMailframe:CreateTexture(nil, "ARTWORK")
selectedIcon:SetSize(35, 35)
selectedIcon:SetPoint("BOTTOMLEFT", selectedDisplay, "TOPLEFT", -40, 0)

-- Checkbox for Auto-Return
local autoReturnCheck = CreateFrame("CheckButton", nil, gMailframe, "UICheckButtonTemplate")
autoReturnCheck:SetPoint("BOTTOMLEFT", gMailframe, "BOTTOMLEFT", 3, 46)
autoReturnCheck.text = autoReturnCheck:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
autoReturnCheck.text:SetPoint("LEFT", autoReturnCheck, "RIGHT", 5, 0)
autoReturnCheck.text:SetText("|cFFFFFF3CSelect All Items|r then |cFFA0FF0CClick \"Return Selected\"|r")
autoReturnCheck:SetChecked(OldGods_AutoReturnEnabled)

autoReturnCheck:SetScript("OnClick", function(self)
    OldGods_AutoReturnEnabled = self:GetChecked() -- Save state
    print("Auto-Return is now", OldGods_AutoReturnEnabled and "ENABLED" or "DISABLED")
end)

local returnButton = CreateFrame("Button", nil, gMailframe, "UIPanelButtonTemplate")
returnButton:SetSize(140, 30)
returnButton:SetPoint("BOTTOM", gMailframe, "BOTTOM", 100, 10)
returnButton:SetText("Return Selected")
returnButton:SetScript("OnClick", function()
    if OldGods_AutoReturnEnabled then
        print("Returning all blacklisted mail...")
        for i = 1, GetInboxNumItems() do
            for j = 1, ATTACHMENTS_MAX_RECEIVE do
                local _, id = GetInboxItem(i, j)
                if id and tContains(OldGods_BadMailDB, id) then
                    if InboxItemCanDelete(i) then
                        DeleteInboxItem(i)
                    else
                        ReturnInboxItem(i)
                    end
                    print("Processed mail containing:", id)
                    return -- Stop after returning one item (prevents infinite loop)
                end
            end
        end
        print("No blacklisted mail found.")
    else
        -- Default behavior if auto-return is OFF
        if selectedMailIndex then
            if InboxItemCanDelete(selectedMailIndex) then
                DeleteInboxItem(selectedMailIndex)
            else
                print("Cannot delete mail, trying return...")
                ReturnInboxItem(selectedMailIndex)
            end
            selectedItemID = nil
            selectedMailIndex = nil
            selectedDisplay:SetText("No Item Selected")
            selectedIcon:SetTexture(nil)
        else
            print("No item selected to return.")
        end
    end
end)

local function UpdateItemList()
    -- Ensure the buttons table exists before using it
    content.buttons = content.buttons or {}

    -- Hide all buttons before repopulating
    for _, btn in pairs(content.buttons) do btn:Hide() end

    local count = 0
    for _, itemID in ipairs(OldGods_BadMailDB) do
        local itemName, _, _, _, _, _, _, _, _, itemTexture = C_Item.GetItemInfo(itemID)

        if itemName then
            count = count + 1

            -- Either reuse an existing button or create a new one, I dont care, I want buttons lol
            local btn = content.buttons[count] or CreateFrame("Button", nil, content, "UIPanelButtonTemplate")
            content.buttons[count] = btn

            -- Configure the button, or youll be sorry
            btn:SetSize(180, 30) --how wide should they be? 150 ok lets party
            btn:SetPoint("TOP", content, "TOP", 0, -40 * (count - 1))
            btn:SetText(itemName)
            btn:SetScript("OnClick", function()
                selectedItemID = itemID
                selectedMailIndex = nil -- Reset this before checking the inbox

                -- Scan the mailbox for a mail containing this item
                for i = 1, GetInboxNumItems() do
                    for j = 1, ATTACHMENTS_MAX_RECEIVE do
                        local _, id = GetInboxItem(i, j)
                        if id and id == selectedItemID then
                            selectedMailIndex = i -- Store the mail index
                            selectedDisplay:SetText("Selected: " .. itemName)
                            selectedIcon:SetTexture(itemTexture)
                            print("Selected item found in inbox:", itemName, "Mail index:", i)
                            return
                        end
                    end
                end

                -- If no mail was found with the selected item
                print("No mail found containing:", itemName)
            end)

            -- Add an icon to the button if it doesn't already have one
            if not btn.icon then
                btn.icon = btn:CreateTexture(nil, "ARTWORK")
                btn.icon:SetSize(30, 30)
                btn.icon:SetPoint("LEFT", btn, "LEFT", 5, 0)
            end
            btn.icon:SetTexture(itemTexture)

            -- Add remove button functionality, this is to remove items from the blacklist
            if not btn.removeBtn then
                btn.removeBtn = CreateFrame("Button", nil, btn, "UIPanelButtonTemplate")
                btn.removeBtn:SetSize(20, 20)
                btn.removeBtn:SetPoint("RIGHT", btn, "RIGHT", 20, 0)
                btn.removeBtn:SetText("X")
                btn.removeBtn:SetPushedTexture(4914679) --inv_shadowflame_orb
                btn.removeBtn:SetScript("OnClick", function()
                    for i, id in ipairs(OldGods_BadMailDB) do
                        if id == itemID then
                            table.remove(OldGods_BadMailDB, i)
                            UpdateItemList()
                            break
                        end
                    end
                end)
                btn.removeBtn:SetScript("OnEnter", function()
                    GameTooltip:SetOwner(UIParent, "ANCHOR_BOTTOM")
                    GameTooltip:ClearLines()
                    GameTooltip:AddLine("Spell ID: " .. itemID, 1, 1, 1, true)
                    GameTooltip:AddDoubleLine("CLick to Remove Entry", "Currently in Blacklist", 0.45, 0.92, 0.08, 0.7,
                        0.85, 0.96)
                    GameTooltip:Show()
                end)

                btn.removeBtn:SetScript("OnLeave", function()
                    GameTooltip:Hide()
                end)
            end
            btn:Show()
        end
    end
end

-- Input Box for Adding Items to the Blacklist
local OGM_inputBox = CreateFrame("EditBox", nil, gMailframe, "InputBoxTemplate")
OGM_inputBox:SetSize(110, 35)
OGM_inputBox:SetPoint("BOTTOMLEFT", gMailframe, "BOTTOMLEFT", 25, 10)
OGM_inputBox:SetAutoFocus(true)
OGM_inputBox:EnableMouse(true)
OGM_inputBox:SetHyperlinksEnabled(true)
OGM_inputBox:SetMaxLetters(3999)
OGM_inputBox:SetScript("OnMouseDown", function(self)
    self:SetFocus()
end)

OGM_inputBox:SetScript("OnEnter", function(self)
    self:SetFocus()
    GameTooltip:SetOwner(UIParent, "ANCHOR_BOTTOM")
    GameTooltip:AddLine("ADD Item to Black List")
    GameTooltip:AddDoubleLine(
        "|cFF00FF00[|r|cFFF0FF00Shift|r+|cFFF0FF00Click Item|r|cFF00FF00]|r", "|cFF00FF00[|r|cFFF0FF00Advanced|r|cFF00FF00]|r Enter Valid |cFFF0FF00[|r|cFF00FF00Item ID#|r|cFFF0FF00]|r\n", 1, 1, 1, 1, 1, 1)
    GameTooltip:Show()
end)

OGM_inputBox:SetScript("OnLeave", function()
    GameTooltip:Hide()
end)

--The magic hooksecurefunc we need to learn more about this, and we are now, so there!
hooksecurefunc("ChatEdit_InsertLink", function(link)
    if link and OGM_inputBox:HasFocus() then
        local itemID = link:match("item:(%d+)") -- Extract the item ID from the link, dont ask I match and I extract
        if itemID then                          -- but I ask chatGPT everytime I have to make a pattern, one day!!!
            OGM_inputBox:SetText(itemID)        -- Set the inputBox text to the item ID numbers
        end
        OGM_inputBox:ClearFocus()               -- Clear focus
        return true
    end
end)

-- Shift+Click to Auto-Fill Item ID
OGM_inputBox:SetScript("OnTextChanged", function(self)
    local text = self:GetText()
    local itemID = tonumber(text)
    if itemID then
        local itemName = C_Item.GetItemInfo(itemID)
        if itemName then
            self:SetText(itemID) -- Keep it clean if user types invalid stuff
        end
    end
end)

-- Add Items to the blacklist - Button
local addButton = CreateFrame("Button", nil, gMailframe, "UIPanelButtonTemplate")
addButton:SetSize(60, 30)
addButton:SetPoint("LEFT", OGM_inputBox, "RIGHT", 7, 0)
addButton:SetText("Add")
addButton:SetScript("OnClick", function()
    local itemID = tonumber(OGM_inputBox:GetText())
    if itemID and not tContains(OldGods_BadMailDB, itemID) then
        table.insert(OldGods_BadMailDB, itemID)
        print("Added Item ID:", itemID, "to blacklist")
        UpdateItemList()
    else
        print("Invalid or duplicate Item ID")
    end
    OGM_inputBox:SetText("")
end)

-- Initialize the mail frame hidden (changed order of action)
gMailframe:Hide()

-- Register events for mail interactions
gMailframe:RegisterEvent("MAIL_SHOW")                             -- this event still works even though event trace does show it
gMailframe:RegisterEvent("PLAYER_INTERACTION_MANAGER_FRAME_HIDE") -- MAIL_CLOSED changed to PLAYER_INTERACTION_MANAGER_FRAME_HIDE were looking for 17(mailinfo) or 0(none) both fire when mail box window is closed

gMailframe:SetScript("OnEvent", function(self, event, ...)
    if event == "MAIL_SHOW" then
        if not self:IsShown() then
            self:Show() --put a small delay on function call to trigger when frame shows (next line)
            C_Timer.After(0.1, function()
                --print("debug: Frame Show")
                UpdateItemList()
            end)
        end
    elseif event == "PLAYER_INTERACTION_MANAGER_FRAME_HIDE" then
        local type = ...
        if type == 17 or type == 0 then     -- event type arguments are 17 or 0
            --print("debug: HIDE 17 or 0 FIRED")
            if self and self:IsShown() then --if our frame exists and it is shown while the events type fired
                self:Hide()                 -- then hide it making it seemless for the user
                --print("debug: Frame Hide")
            end
        end
    end
end)
--#endregion Grief Mail

--#region Options UI and Funtions

--#region Content Frame Guild Functions

--#region Inactive players
--Changes, many see Diff, should be fully optimized and not require multiple key presses for updating the frame and macro
local frame, scrollChild

local inactiveInitiates = {} --Changes moved table init outside function

local function GetInactiveInitiates(threshold)
    --Changes added check for type and if table has any data
    --if so we wipe the table so it repopulated with the next
    --matching player player at the threshold with out having to press f5 twice
    if type(inactiveInitiates) == "table" and #inactiveInitiates > 0 then
        wipe(inactiveInitiates)
    end

    local numGuildMembers = GetNumGuildMembers()
    for i = 1, numGuildMembers do
        local name, rankName, rankIndex = GetGuildRosterInfo(i)

        if rankName then
            local _, _, days = GetGuildRosterLastOnline(i)
            days = days or 0 -- Ensure days is never nil
            local macroa, macrob

            local hyperlinkName = "|Hplayer:" .. name .. "|h|r|cFFFFFFFF[|r|cFFF0F000" .. name .. "|r|cFFFFFFFF]|r|h"

            -- Default macros (for ranks other than Initiate/Member)
            macroa = "/clap"
            macrob = "\n/run C_Timer.After(0.1, function() print(\"No actions to preform\") end)"

            -- Apply `/gremove` only to Initiates (14+) and Members (28+)
            if (rankName == "Initiate" and days >= 14) or (rankName == "Member" and days >= 28) then
                macroa = "/gremove"
                macrob = "\n/run C_Timer.After(0.1, OldGods_ShowInactiveInitiates)"
            end

            -- Add all ranks to the table
            if days >= threshold and days ~= 0 then
                table.insert(inactiveInitiates, {
                    name = name,
                    hyperlinkName = hyperlinkName,
                    rank = rankName,
                    rankId = rankIndex,
                    macro = macroa,
                    macro_n = macrob,
                    totalDaysOffline = days,
                })
            end
        end
    end

    table.sort(inactiveInitiates, function(a, b)
        if a.rankId ~= b.rankId then
            return a.rankId > b.rankId
        end
        if a.totalDaysOffline ~= b.totalDaysOffline then
            return a.totalDaysOffline < b.totalDaysOffline
        end
        return a.name < b.name
    end)

    -- Process the first inactive player into a macro
    C_Timer.After(0.1, function()
        if #inactiveInitiates > 0 then
            local macro_Data = table.remove(inactiveInitiates, 1)
            local TEMP_STRING = macro_Data.macro .. " " .. macro_Data.name .. macro_Data.macro_n
            local chatFrameName = macro_Data.hyperlinkName

            -- Macro details
            local macroIDname = "A_OldGods_Tool"
            local icon = 134238
            local macroText = TEMP_STRING
            local keyBind = "F5"
            local macroIndex = GetMacroIndexByName(macroIDname)

            -- Check if macro exists, else create/update it
            if macroIndex == 0 then
                C_Timer.After(0.1, function()
                    if GetNumMacros() < MAX_ACCOUNT_MACROS then
                        CreateMacro(macroIDname, icon, macroText, nil)
                        -- **Ensure message is printed if `/gremove` is detected**
                        if string.find(macroText, "/gremove") then
                            print(
                                "[OG]: |TInterface\\AddOns\\OldGods\\Textures\\Information.tga:16:16|t Macro Created or Updated!")
                            DEFAULT_CHAT_FRAME:AddMessage("[OG]: " ..
                                chatFrameName ..
                                " staged for removal |TInterface\\AddOns\\OldGods\\Textures\\gremove.tga:16:16|t")
                            print("[OG]: Press " .. keyBind .. " for action on " .. chatFrameName)
                            UIErrorsFrame:AddMessage(
                                "|T516767:32:32|t Secure Action Bound" .. "\nPress [" .. keyBind .. "] to execute.", 1.0,
                                1.0,
                                0.0, 1, 5)
                        end
                    else
                        print(
                            "|cFF0000FF<|rOldGods|cFF0000FF>|r |cFFC8C800ATTENTION|r - Maximum number of macros reached.|r")
                        return
                    end
                end)
            else
                -- Update existing macro
                EditMacro(macroIndex, macroIDname, icon, macroText)
                -- **Ensure message is printed if `/gremove` is detected**
                if string.find(macroText, "/gremove") then
                    --PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-finished-alert5.mp3", "MASTER")
                    print(
                        "[OG]: |TInterface\\AddOns\\OldGods\\Textures\\Information.tga:16:16|t Macro Created or Updated!")
                    DEFAULT_CHAT_FRAME:AddMessage("[OG]: " ..
                        chatFrameName ..
                        " staged for removal |TInterface\\AddOns\\OldGods\\Textures\\gremove.tga:16:16|t")
                    print("[OG]: Press " .. keyBind .. " for action on " .. chatFrameName)
                    UIErrorsFrame:AddMessage(
                        "|T516767:32:32|t Secure Action Bound" .. "\nPress [" .. keyBind .. "] to execute.", 1.0, 1.0,
                        0.0, 1, 5)
                end
            end

            -- Bind macro to key
            C_Timer.After(0.2, function()
                if keyBind and keyBind ~= "" and macroIndex > 0 then
                    SetBindingMacro(keyBind, macroIndex)
                    SaveBindings(GetCurrentBindingSet())
                end
            end)
        end
    end)

    return inactiveInitiates
end

local function CreateInactiveInitiatesFrame(parent)
    -- Base frame
    local frame = CreateFrame("Frame", "InactiveInitiatesFrame", parent, "BackdropTemplate")
    frame:SetSize(420, 300)
    frame:SetPoint("RIGHT", parent)
    frame:SetFrameStrata("FULLSCREEN_DIALOG")
    frame:SetFrameLevel(1)
    frame:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true,
        tileSize = 32,
        edgeSize = 32,
        insets = { left = 8, right = 8, top = 8, bottom = 8 },
    })
    frame:SetBackdropColor(0, 0, 0, 1)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)

    -- Title
    local title = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    title:SetPoint("TOP", 0, -10)
    title:SetText("Offline/Inactive")

    -- Close Button
    local closeButton = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    closeButton:SetPoint("TOPRIGHT", -5, -5)

    local headers = {
        { text = "Name",        width = 150, point = "TOPLEFT", offsetX = 10 },
        { text = "Rank",        width = 100, point = "TOPLEFT", offsetX = 160 },
        { text = "Last Online", width = 100, point = "TOPLEFT", offsetX = 270 },
    }

    for _, header in ipairs(headers) do
        local headerText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
        headerText:SetSize(header.width, 20)
        headerText:SetPoint(header.point, frame, header.point, header.offsetX, -70)
        headerText:SetText(header.text)
    end

    -- Scroll Frame
    local scrollFrame = CreateFrame("ScrollFrame", "InactiveInitiatesScrollFrame", frame,
        "UIPanelScrollFrameTemplate")
    scrollFrame:SetSize(360, 195)
    scrollFrame:SetPoint("TOP", 0, -90)

    -- Scroll Child
    local scrollChild = CreateFrame("Frame")
    scrollFrame:SetScrollChild(scrollChild)
    scrollChild:SetSize(scrollFrame:GetWidth(), 1)                                     -- Dynamic height based on content
    local padding = 5                                                                  -- Padding between columns
    local headerWidth = (scrollFrame:GetWidth() - (#headers - 1) * padding) / #headers -- Dynamic width calc
    return frame, scrollChild, headerWidth
end

local function PopulateInactiveInitiates(frame, scrollChild, data)
    local padding = 5 -- Padding between columns

    -- Font metrics for calculating text width
    local fontString = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")

    -- Precompute maximum column widths
    local maxNameWidth, maxRankWidth, maxLastOnlineWidth = 0, 0, 0
    for _, entry in ipairs(data) do
        -- Name width
        fontString:SetText(entry.name)
        maxNameWidth = math.max(maxNameWidth, fontString:GetStringWidth())

        -- Rank width
        fontString:SetText(entry.rank)
        maxRankWidth = math.max(maxRankWidth, fontString:GetStringWidth())

        -- Last Online width
        fontString:SetText(entry.totalDaysOffline .. " days")
        maxLastOnlineWidth = math.max(maxLastOnlineWidth, fontString:GetStringWidth() + 10)
    end

    -- Add padding to column widths
    maxNameWidth = maxNameWidth + padding * 2
    maxRankWidth = maxRankWidth + padding * 2
    maxLastOnlineWidth = maxLastOnlineWidth + padding * 2

    -- Populate rows
    local rowHeight = 20
    for i, entry in ipairs(data) do
        local yOffset = -i * rowHeight

        -- Name Column as a clickable button
        local nameButton = CreateFrame("Button", nil, scrollChild, "UIPanelButtonTemplate")
        nameButton:SetPoint("TOPLEFT", 0, yOffset)
        nameButton:SetSize(maxNameWidth, rowHeight)
        nameButton:GetFontString():SetWordWrap(false)
        nameButton:SetNormalFontObject("GameFontNormal")
        nameButton:SetHighlightFontObject("GameFontHighlight")
        nameButton:SetText(entry.name)
        nameButton:SetScript("OnClick", function()
            PlaySound(124172)

            UIErrorsFrame:AddMessage(
                "|T516767:32:32:0|t Secure Actions Blocked" .. "\n" .. "Run Inactive search from Options or press F5",
                1.0, 1.0,
                0.0, 1, 6)
        end)

        -- Optional: Add additional columns like Rank and Last Online
        local rankText = scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        rankText:SetPoint("TOPLEFT", nameButton, "TOPRIGHT", padding, 0)
        rankText:SetText(entry.rank)

        local lastOnlineText = scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        lastOnlineText:SetPoint("TOPLEFT", rankText, "TOPRIGHT", padding, 0)
        lastOnlineText:SetText(entry.totalDaysOffline .. " days")
    end

    scrollChild:SetHeight(#data * rowHeight)
end

local function CreateThresholdInputBox(frame, onUpdateCallback)
    -- Create the input box
    local inputBox = CreateFrame("EditBox", nil, frame, "InputBoxTemplate")
    inputBox:SetSize(100, 25)
    inputBox:SetPoint("TOP", frame, "TOP", 0, -40)
    inputBox:SetFrameStrata("TOOLTIP")
    inputBox:SetAutoFocus(false)

    -- Add a label
    local label = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("LEFT", inputBox, "LEFT", -80, -3)
    label:SetText(CreateAtlasMarkup("communities-icon-searchmagnifyingglass", 24, 24) .. " Search:")
    label:SetTextColor(.64, 0.33, 0.08, 1)

    -- Set up the callback for when the user presses Enter
    inputBox:SetScript("OnEnterPressed", function(self)
        local text = self:GetText()
        local value = tonumber(text)
        print("|cFF3c3cA8Threshold updated to|r:", value)

        if value and value > 0 then
            onUpdateCallback(value) -- Call the callback with the new threshold
        else
            print("Invalid input. Please enter a positive number.")
        end
        frame:Hide()
        --self:ClearFocus() -- Remove focus after pressing Enter
    end)

    inputBox:SetScript("OnEnter", function()
        GameTooltip:SetOwner(UIParent, "ANCHOR_BOTTOM")
        GameTooltip:AddLine("Search")
        GameTooltip:AddDoubleLine(
            "|cFF00FF00Enter # (1 to 31)|r", "|cFFF0FF00offline|r days\n", 1, 1, 1, 1, 1, 1)
        GameTooltip:Show()
    end)

    inputBox:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    return inputBox
end

local function closeFrame()
    if frame and frame:IsShown() then
        frame:Hide()
    end
end

-- Initial call Global so Macro can call it
function OldGods_ShowInactiveInitiates()
    local threshold = 14 -- Default threshold
    local data
    closeFrame()

    function RefreshFrame(newThreshold)
        threshold = newThreshold
        data = GetInactiveInitiates(threshold)

        if #data == 0 then
            print("No Guild members match " .. threshold .. " days offline.")
        else
            print("[OG]: |TInterface\\AddOns\\OldGods\\Textures\\Information.tga:16:16|t |cFF66a8bfFound|r: " ..
                #data .. " |cFF66a8bfplayers " ..
                "\n             that are > =|r " .. threshold)
        end

        frame, scrollChild = CreateInactiveInitiatesFrame()
        PopulateInactiveInitiates(frame, scrollChild, data)
        CreateThresholdInputBox(frame, function(newThreshold)
            RefreshFrame(newThreshold)
        end)
    end

    -- Initial population with default threshold
    RefreshFrame(threshold)
end

--#endregion Inactive players

--#region MemberSearch
local guildRosterCache = {}
local searchFrame, scrollFrame, SR_scrollChild

-- Refresh the guild roster cache
local function RefreshGuildRosterCache()
    wipe(guildRosterCache) -- Clear old data

    for i = 1, GetNumGuildMembers() do
        local name, rank, _, _, _, _, _, _, online, _, _, _, _, _ = GetGuildRosterInfo(i)
        local _, _, day, hour = GetGuildRosterLastOnline(i)
        local hyperlinkName = "|Hplayer:" .. name .. "|h[" .. name .. "]|h"
        day = day and day or 0
        hour = hour and hour or 0
        NDay = day
        NHour = hour

        table.insert(guildRosterCache, {
            linkName   = hyperlinkName,
            name       = name,
            rank       = rank,
            online     = online,
            day        = day,
            hour       = hour,
            lastOnline = day .. " D " .. hour .. " Hr",
        })

        table.sort(guildRosterCache, function(a, b)
            -- 1) If both members share the same "online" status:
            if a.online == b.online then
                if a.online == true then
                    -- Both are online - sort by name
                    return a.name < b.name
                else
                    -- Both are offline, compare day/hour
                    -- We want "least time offline" first, so smaller days come first.
                    if a.day == b.day then
                        -- Same day, compare hours
                        return a.hour < b.hour
                    else
                        -- Compare days
                        return a.day < b.day
                    end
                end
            else
                -- 2) One is online, the other is offline. Online goes first:
                return a.online
            end
        end)
    end
end

-- Clear previous search results
local function ClearSearchResults()
    for _, child in ipairs({ SR_scrollChild:GetChildren() }) do
        child:Hide()
        child:SetParent(nil) -- Prevent lingering references
    end
end

local function stripChars(str)
    local tableAccents = {}
    -- Standard Latin Accents
    tableAccents["À"] = "A"
    tableAccents["Á"] = "A"
    tableAccents["Â"] = "A"
    tableAccents["Ã"] = "A"
    tableAccents["Ä"] = "A"
    tableAccents["Å"] = "A"
    tableAccents["Æ"] = "AE"
    tableAccents["Ç"] = "C"
    tableAccents["È"] = "E"
    tableAccents["É"] = "E"
    tableAccents["Ê"] = "E"
    tableAccents["Ë"] = "E"
    tableAccents["Ì"] = "I"
    tableAccents["Í"] = "I"
    tableAccents["Î"] = "I"
    tableAccents["Ï"] = "I"
    tableAccents["Ð"] = "D"
    tableAccents["Ñ"] = "N"
    tableAccents["Ò"] = "O"
    tableAccents["Ó"] = "O"
    tableAccents["Ô"] = "O"
    tableAccents["Õ"] = "O"
    tableAccents["Ö"] = "O"
    tableAccents["Ø"] = "O"
    tableAccents["Ù"] = "U"
    tableAccents["Ú"] = "U"
    tableAccents["Û"] = "U"
    tableAccents["Ü"] = "U"
    tableAccents["Ý"] = "Y"
    tableAccents["Þ"] = "P"
    tableAccents["ß"] = "ss"
    -- Lowercase Variants
    tableAccents["à"] = "a"
    tableAccents["á"] = "a"
    tableAccents["â"] = "a"
    tableAccents["ã"] = "a"
    tableAccents["ä"] = "a"
    tableAccents["å"] = "a"
    tableAccents["æ"] = "ae"
    tableAccents["ç"] = "c"
    tableAccents["è"] = "e"
    tableAccents["é"] = "e"
    tableAccents["ê"] = "e"
    tableAccents["ë"] = "e"
    tableAccents["ì"] = "i"
    tableAccents["í"] = "i"
    tableAccents["î"] = "i"
    tableAccents["ï"] = "i"
    tableAccents["ð"] = "d"
    tableAccents["ñ"] = "n"
    tableAccents["ò"] = "o"
    tableAccents["ó"] = "o"
    tableAccents["ô"] = "o"
    tableAccents["õ"] = "o"
    tableAccents["ö"] = "o"
    tableAccents["ø"] = "o"
    tableAccents["ù"] = "u"
    tableAccents["ú"] = "u"
    tableAccents["û"] = "u"
    tableAccents["ü"] = "u"
    tableAccents["ý"] = "y"
    tableAccents["þ"] = "p"
    tableAccents["ÿ"] = "y"
    -- **Additional Eastern European Characters**
    tableAccents["Ā"] = "A"
    tableAccents["Ă"] = "A"
    tableAccents["Ą"] = "A"
    tableAccents["Ć"] = "C"
    tableAccents["Ĉ"] = "C"
    tableAccents["Ċ"] = "C"
    tableAccents["Č"] = "C"
    tableAccents["Ď"] = "D"
    tableAccents["Đ"] = "D"
    tableAccents["Ē"] = "E"
    tableAccents["Ĕ"] = "E"
    tableAccents["Ė"] = "E"
    tableAccents["Ę"] = "E"
    tableAccents["Ě"] = "E"
    tableAccents["Ĝ"] = "G"
    tableAccents["Ğ"] = "G"
    tableAccents["Ġ"] = "G"
    tableAccents["Ģ"] = "G"
    tableAccents["Ĥ"] = "H"
    tableAccents["Ħ"] = "H"
    tableAccents["Ĩ"] = "I"
    tableAccents["Ī"] = "I"
    tableAccents["Ĭ"] = "I"
    tableAccents["Į"] = "I"
    tableAccents["İ"] = "I"
    tableAccents["Ĳ"] = "IJ"
    tableAccents["Ĵ"] = "J"
    tableAccents["Ķ"] = "K"
    tableAccents["Ĺ"] = "L"
    tableAccents["Ļ"] = "L"
    tableAccents["Ľ"] = "L"
    tableAccents["Ŀ"] = "L"
    tableAccents["Ł"] = "L"
    tableAccents["Ń"] = "N"
    tableAccents["Ņ"] = "N"
    tableAccents["Ň"] = "N"
    tableAccents["Ŋ"] = "N"
    tableAccents["Ō"] = "O"
    tableAccents["Ŏ"] = "O"
    tableAccents["Ő"] = "O"
    tableAccents["Ŕ"] = "R"
    tableAccents["Ŗ"] = "R"
    tableAccents["Ř"] = "R"
    tableAccents["Ś"] = "S"
    tableAccents["Ŝ"] = "S"
    tableAccents["Ş"] = "S"
    tableAccents["Š"] = "S"
    tableAccents["Ţ"] = "T"
    tableAccents["Ť"] = "T"
    tableAccents["Ŧ"] = "T"
    tableAccents["Ũ"] = "U"
    tableAccents["Ū"] = "U"
    tableAccents["Ŭ"] = "U"
    tableAccents["Ů"] = "U"
    tableAccents["Ű"] = "U"
    tableAccents["Ų"] = "U"
    tableAccents["Ŵ"] = "W"
    tableAccents["Ŷ"] = "Y"
    tableAccents["Ÿ"] = "Y"
    tableAccents["Ź"] = "Z"
    tableAccents["Ż"] = "Z"
    tableAccents["Ž"] = "Z"
    -- Lowercase versions of Eastern European characters
    tableAccents["ā"] = "a"
    tableAccents["ă"] = "a"
    tableAccents["ą"] = "a"
    tableAccents["ć"] = "c"
    tableAccents["ĉ"] = "c"
    tableAccents["ċ"] = "c"
    tableAccents["č"] = "c"
    tableAccents["ď"] = "d"
    tableAccents["đ"] = "d"
    tableAccents["ē"] = "e"
    tableAccents["ĕ"] = "e"
    tableAccents["ė"] = "e"
    tableAccents["ę"] = "e"
    tableAccents["ě"] = "e"
    tableAccents["ĝ"] = "g"
    tableAccents["ğ"] = "g"
    tableAccents["ġ"] = "g"
    tableAccents["ģ"] = "g"
    tableAccents["ĥ"] = "h"
    tableAccents["ħ"] = "h"
    tableAccents["ĩ"] = "i"
    tableAccents["ī"] = "i"
    tableAccents["ĭ"] = "i"
    tableAccents["į"] = "i"
    tableAccents["ı"] = "i"
    tableAccents["ĳ"] = "ij"
    tableAccents["ĵ"] = "j"
    tableAccents["ķ"] = "k"
    tableAccents["ĺ"] = "l"
    tableAccents["ļ"] = "l"
    tableAccents["ľ"] = "l"
    tableAccents["ŀ"] = "l"
    tableAccents["ł"] = "l"
    tableAccents["ń"] = "n"
    tableAccents["ņ"] = "n"
    tableAccents["ň"] = "n"
    tableAccents["ŋ"] = "n"
    tableAccents["ō"] = "o"
    tableAccents["ŏ"] = "o"
    tableAccents["ő"] = "o"
    tableAccents["ŕ"] = "r"
    tableAccents["ŗ"] = "r"
    tableAccents["ř"] = "r"
    tableAccents["ś"] = "s"
    tableAccents["ŝ"] = "s"
    tableAccents["ş"] = "s"
    tableAccents["š"] = "s"
    tableAccents["ţ"] = "t"
    tableAccents["ť"] = "t"
    tableAccents["ŧ"] = "t"
    tableAccents["ũ"] = "u"
    tableAccents["ū"] = "u"
    tableAccents["ŭ"] = "u"
    tableAccents["ů"] = "u"
    tableAccents["ű"] = "u"
    tableAccents["ų"] = "u"
    tableAccents["ŵ"] = "w"
    tableAccents["ŷ"] = "y"
    tableAccents["ź"] = "z"
    tableAccents["ż"] = "z"
    tableAccents["ž"] = "z"

    local normalisedString = ''
    --its the fucking bytes, its been the bytes the whole time
    --this function comes from https://stackoverflow.com/questions/50459102/replace-accented-characters-in-string-to-standard-with-lua
    --credit to the pattern and table is not mine ChatGPT walked me around the edge of nailing this without giving me something to copy paste other then this
    --table so any mother fucker that thinks using chatGPT means you dont learn I have 5 days of trial and error to prove otherwise. I tried matching and using sets
    --in a table, I tried key values in every possible combination. I studied pattern matching docs on lua.org and learned the byte difference of UTF8 so I started googling
    --"lua byte pattern" I found you can print(string.byte('a')) but struggled to with creating a pattern set to use bytes - I didnt give up for 5 fucking days working with
    --chatGPT as he wouldnt just give me the awnser, he started laughing at at one point the awnswers were so mangled and out of scope I thought he was tormenting me lol.
    --I thought he gave up on showing me any useful code after naggin him about this ability for my addon with a one track mind.
    --ChatGPT is a mentor, teacher, how I have his responses set up to me not a addon developer, he certainly tried and the entire scope implementation of this function chatGPT
    --has given me insight, but the trial error and research I own, the pattern is credit to the user 'aJynks' on stackoverflow
    normalisedString = str:gsub("[%z\1-\127\194-\244][\128-\191]*", tableAccents)

    return string.lower(normalisedString)
end

-- Dynamic search matching players with accented names usiing normal ascii search input i wouldnt stop till i got it :D
local function UpdateSearchResults(searchText)
    ClearSearchResults() -- Remove old results

    local offsetY = 10
    local rowHeight = 20

    for _, member in ipairs(guildRosterCache) do
        local normalizedMemberName = stripChars(member.name)
        local playerName = member.linkName
        local status = member.online and "|cff00ff00Online|r" or
            string.format("|cffff0000Offline|r (%s)", member.lastOnline)

        -- Compare normalized strings
        if normalizedMemberName:find(searchText, 1, true) then
            -- Create a new row for each matching result
            local row = CreateFrame("Frame", nil, SR_scrollChild)
            row:SetSize(440, rowHeight)
            row:SetPoint("TOPLEFT", SR_scrollChild, "TOPLEFT", 0, -offsetY)

            ----------------------------------------------------------
            -- 1) Name Column
            ----------------------------------------------------------
            local nameCol = CreateFrame("Button", nil, row)
            nameCol:SetPoint("LEFT", row, "LEFT", 0, 0)
            nameCol:SetSize(190, rowHeight)
            nameCol:EnableMouse(true)
            nameCol:SetHyperlinksEnabled(true)

            local nameText = nameCol:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            nameText:SetAllPoints()
            nameText:SetJustifyH("LEFT")
            nameText:SetText(playerName)

            nameCol:SetFontString(nameText)
            nameCol:SetNormalFontObject("GameFontNormal")

            nameCol:SetScript("OnHyperlinkClick", function(self, link, text, button)
                if button == "RightButton" then
                    ChatFrame_OnHyperlinkShow(self, link, text, button)
                end
            end)

            ----------------------------------------------------------
            -- 2) Rank Column
            ----------------------------------------------------------
            local rankCol = row:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            -- Position it to the right of the name column, with a small gap
            rankCol:SetPoint("LEFT", nameCol, "RIGHT", 10, 0)
            rankCol:SetWidth(85)
            rankCol:SetJustifyH("LEFT")
            rankCol:SetText(member.rank)

            ----------------------------------------------------------
            -- 3) Status Column
            ----------------------------------------------------------
            local statusCol = row:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            -- Again position it to the right, with a small gap
            statusCol:SetPoint("LEFT", rankCol, "RIGHT", 10, 0)
            statusCol:SetWidth(180)
            statusCol:SetJustifyH("LEFT")
            statusCol:SetText(status)

            -- Increase the offset so the next row appears below
            offsetY = offsetY + rowHeight
        end
    end


    -- Adjust scroll child height so it can accommodate all rows
    SR_scrollChild:SetSize(440, math.max(offsetY, scrollFrame:GetHeight()))
end

-- Create the search frame (only once)
local function CreateSearchFrame(parent)
    if searchFrame then return end -- Reuse the frame if it already exists

    searchFrame = CreateFrame("Frame", "SearchFrame", UIParent, "BackdropTemplate")
    searchFrame:SetSize(500, 340)
    searchFrame:SetPoint("LEFT", parent)
    searchFrame:SetFrameStrata("FULLSCREEN_DIALOG")
    searchFrame:SetFrameLevel(1)
    searchFrame:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true,
        tileSize = 32,
        edgeSize = 32,
        insets = { left = 8, right = 8, top = 8, bottom = 8 },
    })
    searchFrame:SetBackdropColor(0, 0, 0, 1)
    searchFrame:EnableMouse(true)
    searchFrame:SetMovable(true)
    searchFrame:RegisterForDrag("LeftButton")
    searchFrame:SetScript("OnDragStart", function(self) self:StartMoving() end)
    searchFrame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

    -- Title bar
    local title = searchFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    title:SetPoint("TOP", 0, -10)
    title:SetText("Member Search")

    -- Input box label
    local inputLabel = searchFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLeftOrange")
    inputLabel:SetPoint("TOPLEFT", 95, -40)
    inputLabel:SetText(CreateAtlasMarkup("communities-icon-searchmagnifyingglass", 24, 24) .. " Search:")

    -- Input box for search
    local inputBox = CreateFrame("EditBox", "SearchInputBox", searchFrame, "InputBoxTemplate")
    inputBox:SetSize(200, 30)
    inputBox:SetPoint("LEFT", inputLabel, "RIGHT", 5, 0)
    inputBox:SetAutoFocus(false)
    inputBox:SetScript("OnTextChanged", function(self)
        local searchTextGet = self:GetText()
        local searchText = string.lower(searchTextGet)
        UpdateSearchResults(searchText)
    end)

    -- Close button
    local closeButton = CreateFrame("Button", nil, searchFrame, "UIPanelCloseButton")
    closeButton:SetPoint("TOPRIGHT", -5, -5)
    closeButton:SetScript("OnClick", function()
        searchFrame:Hide()
    end)

    -- Headers for columns
    local headers = {
        { text = "Name",   width = 150, point = "TOPLEFT", offsetX = 10 },
        { text = "Rank",   width = 100, point = "TOPLEFT", offsetX = 160 },
        { text = "Status", width = 100, point = "TOPLEFT", offsetX = 270 },
    }

    for _, header in ipairs(headers) do
        local headerText = searchFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
        headerText:SetSize(header.width, 20)
        headerText:SetPoint(header.point, searchFrame, header.point, header.offsetX, -60)
        headerText:SetText(header.text)
    end

    -- Scrollable list for results
    scrollFrame = CreateFrame("ScrollFrame", "SearchResultsScrollFrame", searchFrame, "UIPanelScrollFrameTemplate")
    scrollFrame:SetSize(searchFrame:GetWidth() - 40, searchFrame:GetHeight() - 90)
    scrollFrame:SetPoint("BOTTOM", 0, 10)

    SR_scrollChild = CreateFrame("Frame", nil, scrollFrame)
    scrollFrame:SetScrollChild(SR_scrollChild)
    return SR_scrollChild
end

-- Main function to initiate member search
local function OldGods_MemberSearch()
    RefreshGuildRosterCache() -- Update cache
    CreateSearchFrame()
    searchFrame:Show()
end
--#endregion OldGods_MemberSearch

--#region create AfkMsgFrame
local function CreateAfkMsgFrame(parent)
    AfkMsgFrame = CreateFrame("Frame", "SearchFrame", UIParent, "BackdropTemplate")
    AfkMsgFrame:SetSize(500, 340)
    AfkMsgFrame:SetPoint("LEFT", parent)
    AfkMsgFrame:SetFrameStrata("FULLSCREEN_DIALOG")
    AfkMsgFrame:SetFrameLevel(1)
    AfkMsgFrame:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true,
        tileSize = 32,
        edgeSize = 32,
        insets = { left = 8, right = 8, top = 8, bottom = 8 },
    })

    AfkMsgFrame:SetBackdropColor(0, 0, 0, 1)
    AfkMsgFrame:EnableMouse(true)
    AfkMsgFrame:SetMovable(true)
    AfkMsgFrame:RegisterForDrag("LeftButton")
    AfkMsgFrame:SetScript("OnDragStart", function(self) self:StartMoving() end)
    AfkMsgFrame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

    -- Title bar
    local title = AfkMsgFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    title:SetPoint("TOP", 0, -10)
    title:SetText("Auto AFK/In Combat Message")

    -- Text lable for inputBoxT (triggerword)
    local inputLabelT = AfkMsgFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    inputLabelT:SetPoint("TOPLEFT", 95, -40)
    inputLabelT:SetText(CreateAtlasMarkup("communities-icon-searchmagnifyingglass", 24, 24) .. " Set trigger word:")
    inputLabelT:SetTextColor(0.64, 0.33, 0.08, 1)

    -- Create the input box for TriggerWord
    local inputBoxT = CreateFrame("EditBox", "TriggerInputBox", AfkMsgFrame, "InputBoxTemplate")
    inputBoxT:SetSize(200, 30)
    inputBoxT:SetPoint("LEFT", inputLabelT, "RIGHT", 5, 0)
    inputBoxT:SetFrameStrata("TOOLTIP")
    inputBoxT:SetAutoFocus(false)

    -- Text lable for inputBoxR (ReplyPhrase)
    local inputLabelR = AfkMsgFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    inputLabelR:SetPoint("TOPLEFT", 95, -100)
    inputLabelR:SetText(CreateAtlasMarkup("communities-icon-searchmagnifyingglass", 24, 24) .. " Auto Reply Text:")
    inputLabelR:SetTextColor(0.64, 0.33, 0.08, 1)

    -- Create the input box for users Reply
    local inputBoxR = CreateFrame("EditBox", "TriggerInputBox", AfkMsgFrame, "InputBoxTemplate")
    inputBoxR:SetSize(200, 200)
    inputBoxR:SetPoint("LEFT", inputLabelR, "RIGHT", 5, 0)
    inputBoxR:SetFrameStrata("TOOLTIP")
    inputBoxR:SetAutoFocus(false)

    -- inputBoxT (trigger) Scripting
    inputBoxT:SetScript("OnEnterPressed", function(self)
        local text = self:GetText():lower()
        if text and text ~= "" then
            OG_AfkMsg.trigger = text
            print("OldGods: AFK trigger word saved -> " .. text)
        end
        self:ClearFocus()
    end)

    -- Tooltip when cursor enters inputBoxT
    inputBoxT:SetScript("OnEnter", function()
        GameTooltip:SetOwner(AfkMsgFrame, "ANCHOR_BOTTOMRIGHT")
        GameTooltip:AddLine("Auto Msg to Guild Trigger Word")
        GameTooltip:AddDoubleLine(
            "|cFF00FF00ESet a Triggger Word", "|cFFF0FF00ie. Common Nick Name|r\n", 1, 1, 1, 1, 1, 1)
        GameTooltip:Show()
    end)

    -- Hide tooltip when cursor leaves inputBoxT
    inputBoxT:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    -- inputBoxR (user reply) Scripting
    inputBoxR:SetScript("OnEnterPressed", function(self)
        local text = self:GetText():lower()
        if text and text ~= "" then
            OG_AfkMsg.reply = text
            print("OldGods: Auto Reply set as ->\n" .. text)
        end
        self:ClearFocus()
    end)

    -- Tooltip when cursor enters inputBoxT
    inputBoxR:SetScript("OnEnter", function()
        GameTooltip:SetOwner(AfkMsgFrame, "ANCHOR_BOTTOMRIGHT")
        GameTooltip:AddLine("Press Enter to Save! max 255 char")
        GameTooltip:AddLine("Enter reply to send when\n" ..
            "trigger is word is said in Guild Chat\n" ..
            "While you are AFK or in combat!")
        GameTooltip:Show()
    end)

    -- Hide tooltip when cursor leaves inputBoxT
    inputBoxR:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    -- Close button
    local closeButton = CreateFrame("Button", nil, AfkMsgFrame, "UIPanelCloseButton")
    closeButton:SetPoint("TOPRIGHT", -5, -5)
    closeButton:SetScript("OnClick", function()
        AfkMsgFrame:Hide()
    end)
end

-- Main function to initiate AfkMsgFrame
local function OldGods_AutoAfkMsg()
    CreateAfkMsgFrame()
    AfkMsgFrame:Show()
end
--#endregion create AfkMsgFrame

--#region Meta data graph
local graphScrollFrame, graphContent

local function GetOnlineGuildMembers()
    local TotalGuildMembers = GetNumGuildMembers()
    local onlineCount = 0

    for i = 1, TotalGuildMembers do
        local _, _, _, _, _, _, _, _, online = GetGuildRosterInfo(i)
        if online then
            onlineCount = onlineCount + 1 -- Im online? count me =D
        end
    end

    return onlineCount
end

-- Tracking/plotting/timing
C_Timer.NewTicker(75, function()
    local timestamp = calDateStamp()
    local online = GetOnlineGuildMembers()
    local chatLines = #OG_ChatMessageTable or 0

    table.insert(OldGodsGuildActivity, {
        timestamp = timestamp,
        chatCount = chatLines,
        onlineMembers = online,
    })

    if #OldGodsGuildActivity > 128 then
        table.remove(OldGodsGuildActivity, 1)
    end
end)

local function CreateGraphFrame(parent)
    if graphScrollFrame then return end

    -- Outer scroll container
    graphScrollFrame = CreateFrame("ScrollFrame", "OldGods_GuildGraphScroll", parent, "BackdropTemplate")
    graphScrollFrame:SetSize(720, 405)
    graphScrollFrame:SetPoint("CENTER", parent, "CENTER", 0, 0)
    graphScrollFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true,
        tileSize = 32,
        edgeSize = 8,
        insets = { left = -10, right = -10, top = -10, bottom = -10 }
    })

    -- Make it draggable
    graphScrollFrame:EnableMouse(true)
    graphScrollFrame:SetMovable(true)
    graphScrollFrame:RegisterForDrag("LeftButton")
    graphScrollFrame:SetScript("OnDragStart", graphScrollFrame.StartMoving)
    graphScrollFrame:SetScript("OnDragStop", graphScrollFrame.StopMovingOrSizing)
    graphScrollFrame:SetScript("OnEnter", function()
        GameTooltip:SetOwner(graphScrollFrame, "ANCHOR_CURSOR")
        GameTooltip:AddLine("Use MouseWheel to Scroll Graph!", 1, 1, 1)
        GameTooltip:AddLine("Scroll Down: Recent Data", 0, 0.85, 0.675)
        GameTooltip:AddLine("Scroll Up: Past Data", 0.35, 0.60, 0.425)
        GameTooltip:AddLine("Drag graph from here to position", 0.525, 0.45, 0.385)
        GameTooltip:Show()
    end)
    graphScrollFrame:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    graphScrollFrame:SetVerticalScroll(graphScrollFrame:GetVerticalScrollRange())

    -- Close button
    --local closeButton = CreateFrame("Button", nil, graphScrollFrame, "UIPanelCloseButton")
    --closeButton:SetPoint("TOPRIGHT", -5, -5)
    --closeButton:SetScript("OnClick", function()
    --graphScrollFrame:Hide()
    --end)

    -- Mousewheel 2D scroll [commented out vertical scroll and the need to hold shift for horrizon]
    graphScrollFrame:EnableMouseWheel(true)
    graphScrollFrame:SetScript("OnMouseWheel", function(self, delta)
        --if IsShiftKeyDown() then
        self:SetHorizontalScroll(self:GetHorizontalScroll() - delta * 20)
        -- else
        -- self:SetVerticalScroll(self:GetVerticalScroll() - delta * 20)
        --  self:SetVerticalScroll(self:GetVerticalScrollRange())
        --end
    end)

    -- Scrollable content
    graphContent = CreateFrame("Frame", nil, graphScrollFrame)
    graphContent:SetSize(800, 340) -- horrizontal scroll keeping vertical locked
    graphScrollFrame:SetScrollChild(graphContent)

    -- Background for clarity
    local bg = graphContent:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints(graphScrollFrame, true)
    bg:SetColorTexture(0.05, 0.05, 0.105, 0.8)

    --[[Grid lines (horizontal)
    for i = 1, 4 do
        local grid = graphContent:CreateTexture(nil, "ARTWORK")
        grid:SetColorTexture(0.3, 0.3, 0.3, 0.4)
        grid:SetSize(graphContent:GetWidth(), 1)
        grid:SetPoint("BOTTOMLEFT", 0, i * (graphContent:GetHeight() / 4))

    end

    -- Grid lines (vertical)
    for i = 1, 10 do
        local vgrid = graphContent:CreateTexture(nil, "ARTWORK")
        vgrid:SetColorTexture(0.3, 0.3, 0.3, 0.3)
        vgrid:SetSize(1, graphContent:GetHeight())
        vgrid:SetPoint("TOPLEFT", i * (graphContent:GetWidth() / 10), 0)
    end]]

    local gridSize = 32
    local width = graphContent:GetWidth() - 10
    local height = graphContent:GetHeight() - 10

    for y = gridSize, height - gridSize, gridSize do
        local hLine = graphContent:CreateTexture(nil, "ARTWORK")
        hLine:SetColorTexture(0.2, 0.2, 0.2, 0.325)
        hLine:SetSize(width, 1)
        hLine:SetPoint("BOTTOMLEFT", 0, y)
    end

    for x = gridSize, width - gridSize, gridSize do
        local vLine = graphContent:CreateTexture(nil, "ARTWORK")
        vLine:SetColorTexture(0.2, 0.2, 0.2, 0.325)
        vLine:SetSize(1, height)
        vLine:SetPoint("BOTTOMLEFT", x, 0)
    end

    -- Legend box
    local legend = CreateFrame("Frame", nil, graphContent, "BackdropTemplate")
    legend:SetSize(120, 40)
    legend:SetPoint("TOPLEFT", 10, -10)
    legend:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true,
        tileSize = 0,
        edgeSize = 8,
        insets = { left = 2, right = 2, top = 2, bottom = 2 }
    })
    legend:SetBackdropColor(0.025, 0.055, 0.115, 0.9)

    -- Chat label (yellow)
    local chatColor = legend:CreateTexture(nil, "ARTWORK")
    chatColor:SetColorTexture(1, 1, 0, 1)
    chatColor:SetSize(12, 12)
    chatColor:SetPoint("TOPLEFT", 6, -6)

    local chatLabel = legend:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    chatLabel:SetPoint("LEFT", chatColor, "RIGHT", 4, 0)
    chatLabel:SetText("Chat Activity")

    -- Online label (green)
    local onlineColor = legend:CreateTexture(nil, "ARTWORK")
    onlineColor:SetColorTexture(0, 1, 0, 1)
    onlineColor:SetSize(12, 12)
    onlineColor:SetPoint("TOPLEFT", chatColor, "BOTTOMLEFT", 0, -6)

    local onlineLabel = legend:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    onlineLabel:SetPoint("LEFT", onlineColor, "RIGHT", 4, 0)
    onlineLabel:SetText("Online Players")
end

local function OldGods_DrawGuildActivityGraph()
    if not OldGodsGuildActivity or not graphContent then return end

    -- Clean up previous lines
    for _, region in ipairs({ graphContent:GetRegions() }) do
        if region:GetObjectType() == "Line" then
            region:Hide()
        end
    end

    local spacing = 5
    local maxY = 1
    for _, data in ipairs(OldGodsGuildActivity) do
        -- Scale by whichever is bigger: chat or online
        if data.chatCount > maxY then maxY = data.chatCount end
        if data.onlineMembers > maxY then maxY = data.onlineMembers end
    end

    local height = graphContent:GetHeight()
    local scaleFactor = height / maxY

    for i = 2, #OldGodsGuildActivity do
        local prev = OldGodsGuildActivity[i - 1]
        local curr = OldGodsGuildActivity[i]

        local x1 = (i - 2) * spacing
        local x2 = (i - 1) * spacing

        -- Chat line (yellow)
        local y1c = prev.chatCount * scaleFactor
        local y2c = curr.chatCount * scaleFactor
        local lineC = graphContent:CreateLine(nil, "OVERLAY")
        lineC:SetThickness(1)
        lineC:SetColorTexture(1, 1, 0, 1) -- yellow
        lineC:SetStartPoint("BOTTOMLEFT", x1, y1c)
        lineC:SetEndPoint("BOTTOMLEFT", x2, y2c)

        -- Online line (green)
        local y1o = prev.onlineMembers * scaleFactor
        local y2o = curr.onlineMembers * scaleFactor
        local lineO = graphContent:CreateLine(nil, "OVERLAY")
        lineO:SetThickness(1)
        lineO:SetColorTexture(0, 1, 0, 1) -- green
        lineO:SetStartPoint("BOTTOMLEFT", x1, y1o)
        lineO:SetEndPoint("BOTTOMLEFT", x2, y2o)

        -- Invisible hitbox
        local hitbox = CreateFrame("Frame", nil, graphContent)
        hitbox:SetSize(spacing, height) -- covers this slice of the graph
        hitbox:SetPoint("BOTTOMLEFT", x1, 0)
        hitbox:SetMouseClickEnabled(true)
        hitbox:EnableMouse(true)
        hitbox:SetScript("OnEnter", function()
            GameTooltip:SetOwner(hitbox, "ANCHOR_CURSOR")
            GameTooltip:AddLine(curr.timestamp, 1, 1, 1)
            GameTooltip:AddDoubleLine("Online: " .. curr.onlineMembers, "Chat: " .. curr.chatCount, 0, 1, 0, 1, 1, 0)
            --GameTooltip:AddLine("Chat: " .. curr.chatCount, 1, 1, 0)
            GameTooltip:Show()
        end)
        hitbox:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
    end

    -- Add time labels
    for i = 1, #OldGodsGuildActivity, 10 do
        local entry = OldGodsGuildActivity[i]
        local x = (i - 1) * spacing

        -- Vertical tick line
        local tick = graphContent:CreateTexture(nil, "ARTWORK")
        tick:SetColorTexture(0.5, .85, 0.95, 0.625)
        tick:SetSize(1, 16)
        tick:SetPoint("BOTTOMLEFT", x, 0)

        -- Timestamp label ( Day of the week over HH:MM )
        local label = graphContent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        label:SetPoint("BOTTOMLEFT", x + 2, 6)
        label:SetText(entry.timestamp:match("^%d+:%d+")) -- HH:MM only

        local daylable = graphContent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        daylable:SetPoint("BOTTOMLEFT", x + 2, 18)
        daylable:SetText(entry.timestamp:match(",%s*(%a+),")) -- Day of the week
    end
end

function OldGods_MetaDataGraph(parent)
    CreateGraphFrame(parent)
    OldGods_DrawGuildActivityGraph()
    graphScrollFrame:Show()
end

--#endregion Meta data graph =)

--#region Fast Options Content Menu

local function toggle_ZoneSpam()
    zoneDataSpam = not zoneDataSpam
    OG_Fast_Options["Toggle Zone Tracking"].icon = zoneDataSpam
        and "|TInterface\\AddOns\\OldGods\\Textures\\toggleOff.tga:18:18|t"
        or "|TInterface\\AddOns\\OldGods\\Textures\\toggleOn.tga:18:18|t"
    local statetring = zoneDataSpam and "Zone Data On" or "Zone Data Off"
    print(statetring)
    if zoneDataSpam then
        if OldGodsDB.soundEnabled then
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert7.mp3")
        end
    else
        if OldGodsDB.soundEnabled then
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-close-alert2.mp3")
        end
    end
end


OG_Fast_Options = {
    ["Member Search"] = {
        fastFunction = OldGods_MemberSearch,
        icon = "|TInterface\\AddOns\\OldGods\\Textures\\Search.tga:18:18|t ",
    },
    ["Inactive Purge"] = {
        fastFunction = OldGods_ShowInactiveInitiates,
        icon = "|TInterface\\AddOns\\OldGods\\Textures\\gremove.tga:18:18|t "
    },
    ["Toggle Zone Tracking"] = {
        fastFunction = toggle_ZoneSpam,
        icon = zoneDataSpam and "|TInterface\\AddOns\\OldGods\\Textures\\toggleOff.tga:18:18|t " or
            "|TInterface\\AddOns\\OldGods\\Textures\\toggleOn.tga:18:18|t "
    },
}

for _, button in ipairs(GuildChatWindow.CustomFastOptionsZone) do
    if button:GetName() == "fastOptionsMenuZone" then
        button:SetScript("OnEnter", function(self)
            MenuUtil.CreateContextMenu(UIParent, function(region, fastOptionsMenu)
                fastOptionsMenu:CreateTitle("Old Gods: Fast Options")
                for bLable, bData in pairs(OG_Fast_Options) do
                    fastOptionsMenu:CreateButton(bData.icon .. bLable, bData.fastFunction)
                end
            end)
        end)
    end
end


--#endregion Fast Options Content Menu
--#endregion Content Frame Guild Functions

--#region Content Frame optionsFrame.contentFrame
local function ClearContentFrame(optionsFrame)
    local contentFrame = optionsFrame.contentFrame
    if not contentFrame then return end

    -- Iterate through all child elements of contentFrame, not the entire optionsFrame
    for _, child in ipairs({ contentFrame:GetChildren() }) do
        child:Hide()
        child:SetParent(nil)
    end

    -- Clear font strings only in contentFrame
    for _, region in ipairs({ contentFrame:GetRegions() }) do
        if region:GetObjectType() == "FontString" then
            region:Hide()
            region:SetParent(nil)
        end
    end
end

--#region populate Color settings
local function CreateColorPicker(defaultR, defaultG, defaultB, defaultA, onColorChange)
    -- Ensure the ColorPickerFrame exists
    if not ColorPickerFrame then
        print("Error: ColorPickerFrame is not available.")
        return
    end

    -- Set up the ColorPickerFrame

    ColorPickerFrame.previousValues = { defaultR, defaultG, defaultB, defaultA } -- Store original color
    ColorPickerFrame.opacity = (defaultA or 1)                                   -- Default opacity
    ColorPickerFrame.hasOpacity = (defaultA ~= nil)

    -- Callback for when color is confirmed
    local function applyColor()
        local r, g, b = ColorPickerFrame:GetColorRGB()
        local a = ColorPickerFrame:GetColorAlpha()
        onColorChange(r, g, b, a)
    end

    ColorPickerFrame.func = applyColor        -- Called on color selection changes
    ColorPickerFrame.opacityFunc = applyColor -- Called on opacity changes
    ColorPickerFrame.swatchFunc = applyColor  -- Called when "OK" is clicked
    ColorPickerFrame.cancelFunc = function(previousValues)
        if previousValues then
            local r, g, b, a = unpack(previousValues)
            onColorChange(r, g, b, a) -- Revert to the previous color
        end
    end
    ColorPickerFrame:Show()
end

local function AddResetButton(parent, theme, colorOptions)
    local button = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    button:SetSize(150, 30)
    button:SetNormalFontObject("GameFontNormalMed2Outline")
    button:SetHighlightFontObject("GameFontHighlightMed2Outline")
    button:SetText("Reset to Default")

    button:SetScript("OnClick", function()
        local defaults = theme
        --local tName = GetCurrentThemeName()

        if not defaults then
            return
        end

        for _, option in ipairs(colorOptions) do
            local key = option.key
            local default = ResolveNestedKey(defaults, key)

            if default then
                ResolveNestedKey(defaults, key, default)
                OldGodsSavedColors[key] = nil
            else
                print("Warning: Key " .. key .. " not found in defaults.")
            end
        end

        ApplyTheme(GuildChatWindow, theme)
        print("Theme reset to defaults!")
    end)

    return button
end

local function PopulateContentFrame_ThemeColorSettings(optionsFrame, theme)
    local buttons = {}
    local yOffset = -15 -- Initial Y offset
    local contentFrame = optionsFrame.contentFrame

    -- Define the colors you want to modify
    local colorOptions = {
        { label = "Window (Title)",           key = "titleColor" },
        { label = "Window [Border]",          key = "borderColor" },
        { label = "Window (Background)",      key = "backgroundColor" },
        { label = "Button [Border]",          key = "buttonBorderColor" },
        { label = "Button (Background)",      key = "buttonBgColor" },
        { label = "Chat Window [Border]",     key = "theStefak.cristaFrameBorderColor" },
        { label = "Chat Window (Background)", key = "theAtari.isEditBoxBG" },
    }

    -- Create a button for each color option
    for _, option in ipairs(colorOptions) do
        local button = CreateFrame("Button", nil, contentFrame, "UIPanelButtonTemplate")
        button:SetSize(300, 30)
        button:SetNormalFontObject("GameFontNormalMed2Outline")
        button:SetHighlightFontObject("GameFontHighlightMed2Outline")
        button:SetText("Change " .. option.label)
        button:SetScript("OnClick", function()
            -- Resolve the color from the theme (handles both direct and nested keys)
            local color = ResolveNestedKey(theme, option.key) or { r = 1, g = 1, b = 1, a = 1 }
            -- Show the color picker
            CreateColorPicker(color.r, color.g, color.b, color.a, function(r, g, b, a)
                -- Update the theme with the new color
                ResolveNestedKey(theme, option.key, { r = r, g = g, b = b, a = a })
                -- Save the color to SavedVariables
                OldGodsSavedColors[option.key] = { r = r, g = g, b = b, a = a }
                -- Apply the updated theme
                ApplyTheme(GuildChatWindow, theme)
            end)
        end)

        -- Position the buttons
        button:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 15, yOffset)
        yOffset = yOffset - 35 -- Move down for the next button
        table.insert(buttons, button)
    end

    local resetButton = AddResetButton(contentFrame, theme, colorOptions)
    resetButton:SetPoint("BOTTOM", contentFrame, "BOTTOM", 0, 50)

    return buttons
end
--#endregion populate Color settings

--#region populate General settings
local function PopulateContentFrame_GeneralSettings(optionsFrame)
    local contentFrame = optionsFrame.contentFrame

    -- Create a label for the Font Dropdown
    local fontLabel = contentFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    fontLabel:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 20, -20)
    fontLabel:SetText("Guild Chat Fonts")
    fontLabel:SetTextColor(1, 1, 1, 1)

    -- Create the Font Dropdown
    local fontDropdown = CreateFrame("DropdownButton", "FontDropdown", contentFrame, "WowStyle1DropdownTemplate")
    fontDropdown:SetPoint("TOPLEFT", fontLabel, "BOTTOMLEFT", -5, -5)
    fontDropdown:SetWidth(200)
    fontDropdown:SetHeight(30)
    fontDropdown:SetDefaultText("Select Font")
    fontDropdown:SetupMenu(function(self, rootDescription)
        for fontName, fontData in pairs(OG_Fonts) do
            rootDescription:CreateButton("|TInterface\\Icons\\INV_Letter_01:24:24:0|t " .. fontName, function(data)
                ApplyFont(GuildChatWindow.editBox, fontData)
                print("Selected Font:", fontName)
            end)
        end
    end)

    -- Create a label for the Theme Dropdown
    local themeLabel = contentFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    themeLabel:SetPoint("TOPLEFT", fontDropdown, "BOTTOMLEFT", 5, -20)
    themeLabel:SetText("Guild Chat Themes")
    themeLabel:SetTextColor(1, 1, 1, 1)

    -- Create the Theme Dropdown
    local themeDropdown = CreateFrame("DropdownButton", "ThemeDropdown", contentFrame, "WowStyle1DropdownTemplate")
    themeDropdown:SetPoint("TOPLEFT", themeLabel, "BOTTOMLEFT", -5, -5)
    themeDropdown:SetWidth(200)
    themeDropdown:SetHeight(30)
    themeDropdown:SetDefaultText("Select Theme")
    themeDropdown:SetupMenu(function(self, rootDescription)
        for themeName, themeData in pairs(OG_Themes) do
            rootDescription:CreateButton(themeData.dropDownIcon .. themeName, function(data)
                ApplyTheme(GuildChatWindow, themeData)
                print("Selected Theme:", themeName)
            end)
        end
    end)
end
--#endregion populate General settings

--#region populate Sound Settings
local function PopulateContentFrame_SoundSettings(optionsFrame)
    local contentFrame = optionsFrame.contentFrame

    local soundCheckbox = CreateFrame("CheckButton", "OG_SoundCheckbox", contentFrame, "ChatConfigCheckButtonTemplate")
    soundCheckbox:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 12, -12)
    soundCheckbox.Text:SetText("Enable Sounds")
    soundCheckbox:SetChecked(OldGodsDB.soundEnabled)

    soundCheckbox:SetScript("OnClick", function(self)
        local checked = self:GetChecked()
        OldGodsDB.soundEnabled = checked
        PlaySound(checked and SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON or SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF)
    end)
end
--#endregion populate Sound Settings


--#region populate Guild settings
local function dummyFunction()
    print("YOU CLICKED A BUTTON")
end

local function PopulateContentFrame_GuildSettings(optionsFrame)
    local buttons = {}
    local yOffset = -10
    local contentFrame = optionsFrame.contentFrame

    local guildOptions = {
        { label = "Inactive Initiates", key = OldGods_ShowInactiveInitiates },
        { label = "Member Search",      key = OldGods_MemberSearch },
        { label = "Meta Data",          key = OldGods_MetaDataGraph },
        { label = "Automated Busy MSG", key = OldGods_AutoAfkMsg },
        { label = "x4",                 key = dummyFunction },
        { label = "x5",                 key = dummyFunction },
        { label = "x6",                 key = dummyFunction },
    }

    for _, option in ipairs(guildOptions) do
        local button = CreateFrame("Button", nil, contentFrame, "UIPanelButtonTemplate")
        local guildcallbackFunction = option.key
        button:SetSize(250, 27)
        button:SetText(option.label)
        button:SetScript("OnClick", guildcallbackFunction)

        -- Position the button
        button:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 10, yOffset)
        yOffset = yOffset - 30 -- Move down for the next button
        table.insert(buttons, button)
    end
    return buttons
end
--#endregion populate Guild settings

--#endregion POPULATE CONTENT FRAME

--#region Navigation buttons callback functions
local function ShowColorsSettings(optionsFrame)
    ClearContentFrame(optionsFrame)
    optionsFrame:Show()
    PopulateContentFrame_ThemeColorSettings(optionsFrame, CurrentTheme)
end

local function ShowGeneralSettings(optionsFrame)
    ClearContentFrame(optionsFrame)
    optionsFrame:Show()
    PopulateContentFrame_GeneralSettings(optionsFrame)
end

local function ShowSoundSettings(optionsFrame)
    ClearContentFrame(optionsFrame)
    optionsFrame:Show()
    PopulateContentFrame_SoundSettings(optionsFrame)
end

local function ShowGuildSettings(optionsFrame)
    ClearContentFrame(optionsFrame)
    optionsFrame:Show()
    PopulateContentFrame_GuildSettings(optionsFrame)
end
--#endregion Navigation buttons callback functions

--#region Create Options Frame
local function CreateOptionsFrame()
    ------------------------------------------------------------------
    -- MAIN OPTIONS FRAME
    ------------------------------------------------------------------
    local optionsFrame = CreateFrame("Frame", "OldGodsOptionsFrame", UIParent, "BackdropTemplate")
    optionsFrame:SetSize(800, 600)
    optionsFrame:SetPoint("TOPRIGHT", UIParent)
    optionsFrame:SetFrameStrata("DIALOG")
    optionsFrame:SetFrameLevel(1)
    optionsFrame:SetMovable(true)
    optionsFrame:EnableMouse(true)
    optionsFrame:RegisterForDrag("LeftButton")
    optionsFrame:SetScript("OnDragStart", optionsFrame.StartMoving)
    optionsFrame:SetScript("OnDragStop", optionsFrame.StopMovingOrSizing)
    optionsFrame:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        edgeSize = 1,
    })
    optionsFrame:SetBackdropColor(0.05, 0.05, 0.05, 0.8)
    optionsFrame:SetBackdropBorderColor(0.8, 0.8, 0.8, 1)

    local closeButton = CreateFrame("Button", nil, optionsFrame, "UIPanelCloseButton")
    closeButton:SetPoint("TOPRIGHT", -5, -5)
    closeButton:SetScript("OnClick", function()
        optionsFrame:Hide()
    end)

    ------------------------------------------------------------------
    -- TITLE BAR
    ------------------------------------------------------------------
    local titleTexture = optionsFrame:CreateTexture(nil, "ARTWORK")
    -- Anchor near the top with some margin
    titleTexture:SetPoint("TOPLEFT", optionsFrame, "TOPLEFT", 10, -10)
    titleTexture:SetSize(780, 40) -- wide enough to look like a title bar
    titleTexture:SetColorTexture(0.1, 0.1, 0.1, 0.8)

    -- Tiny border at the bottom of the title bar
    local titleBorder = optionsFrame:CreateTexture(nil, "ARTWORK")
    titleBorder:SetPoint("TOPLEFT", titleTexture, "BOTTOMLEFT", 0, 0)
    titleBorder:SetPoint("TOPRIGHT", titleTexture, "BOTTOMRIGHT", 0, 0)
    titleBorder:SetHeight(1)
    titleBorder:SetColorTexture(0.8, 0.8, 0.8, 1)

    --local navtitle = "Old Gods Settings and Options"
    optionsFrame.title = optionsFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    optionsFrame.title:SetPoint("CENTER", titleTexture, "CENTER")
    optionsFrame.title:SetText("Old Gods Settings and Options")
    --optionsFrame.title:SetFormattedText("%s", navtitle)
    optionsFrame.title:SetTextColor(0.88, 0.88, 0.08, 1)

    ------------------------------------------------------------------
    -- NAVIGATION AREA
    ------------------------------------------------------------------
    local navTexture = optionsFrame:CreateTexture(nil, "BACKGROUND")
    -- Anchor it below titleTexture, with a little gap
    navTexture:SetPoint("TOPLEFT", titleTexture, "BOTTOMLEFT", 0, -10)
    navTexture:SetSize(200, 530) -- Enough height to fill the frame below the title
    navTexture:SetColorTexture(0.1, 0.1, 0.1, 0.8)

    -- Draw a small border on the right side of the nav area
    local navBorderRight = optionsFrame:CreateTexture(nil, "BACKGROUND")
    navBorderRight:SetPoint("TOPLEFT", navTexture, "TOPRIGHT", 0, 0)
    navBorderRight:SetPoint("BOTTOMLEFT", navTexture, "BOTTOMRIGHT", 0, 0)
    navBorderRight:SetWidth(1)
    navBorderRight:SetColorTexture(0.8, 0.8, 0.8, 1)

    ------------------------------------------------------------------
    -- CONTENT AREA
    ------------------------------------------------------------------
    local contentFrame = CreateFrame("Frame", nil, optionsFrame, "BackdropTemplate")
    contentFrame:SetPoint("TOPLEFT", navTexture, "TOPRIGHT", 10, 0)
    contentFrame:SetSize(560, 530)
    contentFrame:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        edgeSize = 2,
    })
    contentFrame:SetBackdropColor(0.05, 0.05, 0.05, 0.8)
    contentFrame:SetBackdropBorderColor(.65, 0.33, 0.05, .75)
    -- Save it on optionsFrame so you can reference it later
    optionsFrame.contentFrame = contentFrame

    ------------------------------------------------------------------
    -- TEXT LABEL
    ------------------------------------------------------------------
    local fontLabel = optionsFrame.contentFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLeft")
    fontLabel:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 15, -15)
    fontLabel:SetJustifyH("LEFT")
    fontLabel:SetJustifyV("TOP")
    fontLabel:SetText("|cFF00FF00Welcome to the Old Gods Guild Chat AddOn|r\n\n" ..
        "Navigate each Setting and Option by clicking\non the nav buttons in the left-hand section.\n\n" ..
        "The |cFF00FF00General|r settings include\nFont and Theme selections and other misc. settings.\n\n" ..
        "The |cFF00FF00Colors|r settings are only available\nwhen the |cFFFFFF00'Your Custom Theme'|r is chosen.\n\n" ..
        "The |cFF00FF00Sounds|r WIP settings let you choose sounds\nor disable sounds used by this AddOn (coming soon).\n\n" ..
        "The |cFF00FF00Guild|r tab is full of useful functions\n" ..
        "to aid with common tasks not found in WoW's Guild Chat!\n")
    fontLabel:SetTextColor(1, 1, 1, 1)

    SetupNavigation(optionsFrame)
    return optionsFrame
end

local function CreateNavButton(parent, label, yOffset, onClick)
    local button = CreateFrame("Button", nil, parent, "GameMenuButtonTemplate")
    button:SetSize(140, 30)
    button:SetPoint("TOPLEFT", parent, "TOPLEFT", 35, yOffset - 60)
    button:SetText(label)
    button:SetNormalFontObject("GameFontNormal")
    button:SetHighlightFontObject("GameFontHighlight")
    button:SetScript("OnClick", onClick)
    return button
end

function SetupNavigation(optionsFrame)
    -- CREATE THE HOME BUTTON FIRST
    local yOffset = -10
    local homeButton = CreateNavButton(optionsFrame, "Home", yOffset, function()
        if optionsFrame:IsShown() then
            optionsFrame:Hide()
            local newFrame = CreateOptionsFrame()
            newFrame:Show()
        end
    end)

    yOffset = yOffset - 40

    local navButtons = {
        {
            label = "General",
            callback = function()
                ShowGeneralSettings(optionsFrame)
                print("General Settings")
                local navtitle = "General Settings"
                optionsFrame.title:SetFormattedText("%s", navtitle)
            end
        },
        {
            label = "Sounds",
            callback = function()
                ShowSoundSettings(optionsFrame)
                print("Sound Settings")
                local navtitle = "Sound Settings"
                optionsFrame.title:SetFormattedText("%s", navtitle)
            end
        },
        {
            label = "Colors",
            callback = function()
                local themeName = GetCurrentThemeName()
                if themeName == "Your Custom Theme" then
                    ShowColorsSettings(optionsFrame)
                    local navtitle = "Custom Theme Settings"
                    optionsFrame.title:SetFormattedText("%s", navtitle)
                else
                    GameTooltip:SetOwner(UIParent, "ANCHOR_CURSOR_RIGHT")
                    GameTooltip:SetText(
                        "This Section is only available to 'Your Custom Theme' which is the default Theme on loading. All Changes made to the 'Your Custom Theme' are saved as they are selected and will persist unless you click the Reset button, which will revert all changes made and apply the default colors as it was before any changers were made. Have fun with it, this feature will include more customizable options in the future!",
                        0.7, 0.7, 0.2, 1, true)
                    GameTooltip:Show()
                    GameTooltip:SetScript("OnLeave", function()
                        GameTooltip:Hide()
                    end)
                end
            end
        },
        {
            label = "Guild",
            callback = function()
                ShowGuildSettings(optionsFrame)
                print("Guild Settings")
                local navtitle = "Guild Info Options"
                optionsFrame.title:SetFormattedText("%s", navtitle)
            end
        },
    }
    for _, nav in ipairs(navButtons) do
        CreateNavButton(optionsFrame, nav.label, yOffset, nav.callback)
        yOffset = yOffset - 40
    end
end

--#region inti options frame
local optionsFrame = CreateOptionsFrame()
optionsFrame:Hide()

-- Toggle the big single-frame window when the Options button is clicked
for _, button in ipairs(GuildChatWindow.buttons) do
    if button:GetName() == "optionsButton" then
        button:SetScript("OnClick", function()
            if optionsFrame:IsShown() then
                return
            else
                optionsFrame:Show()
                if OldGodsDB.soundEnabled then
                    PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert7.mp3")
                end
            end
        end)
    end
end
--endregion Init options Frame

--#endregion Create Options Frame

--#endregion Options UI and Functions

--#region OnChatMessage called Functions

--chatMessageSpice takes parameters from data gathered in OnChatMessage()
--this is where all color is added, and string.format then returns chatMessage
local function chatMessageSpice(sender, message, class)
    local senderWithoutServer = Ambiguate(sender, "none")
    local classColor = GetClassColor(class)

    -- #####  timestamp: CRITICAL FOR ADDON TO FUNCTION PROPERLY
    --               *** DO NOT ALTER DATE FORMAT OR EXCLUDE timestamp FROM chatMessage ***
    --                   The OnChatMessage function checks if each message is unique
    --                   else it is not added to the table which is used to update
    --                   the editBox (where chat messages appear).
    --                   The time, down to the %S (seconds) in the date function makes
    --                   messages unique that are from the same sender. This ensures that
    --                   commonly repeated messages like ie. LOL, grats.. etc
    --                   dont get excluded from the table, A few jokes are told and a sender
    --                   types LOL more then once before a minute passes, if %S is excluded
    --                   every LOL until the %M (minute) changes would be excluded from Chat!!
    local timestamp = date("%H:%M:%S")

    -- Set the colors for formatting and format sender
    -- as a clickable HyperLink |Hplayer:%s(sender)|h%s(senderwithoutserver)|h
    -- plan to make table with multiple colors for user choice colors in General Settings
    local chatFormat = "|cFFD9D3a1%s|r:" ..
        "[|cFF%s|Hplayer:%s|h%s|r|h]|cFFe9f3a1:|r " ..
        "|cFF06FF00%s|r"

    -- format the string, variables are in order of tokens:
    local chatMessage = string.format(chatFormat, --variable to return = the string to format
        timestamp,                                --first token (%s)
        classColor, sender, senderWithoutServer,  --second, third and forth tokens (%s)
        message                                   --fifth token (%s)
    )
    return chatMessage
end

--tooltipSpice takes parameters from data gathered in OnChatMessage()
--colorizes text and adds descriptions, returns the formated string formattedTooltip
local function tooltipSpice(sender, level, class, zone, rank, publicN, officerN)
    local classColor = GetClassColor(class)
    local rankColor = GetRankColor(rank)

    -- define the colors used by the HyperLink toolTip
    local tooltipFormat =
        "[|cff%s%s|r] %s\n" ..
        "|cFF69c8ffLevel|r: %s\n" ..
        "|cFF69c8ffRank|r: |cff%s%s|r\n" ..
        "|cFF69c8ffZone|r: %s\n" ..
        "|cFF69c8ffPublic Note|r: %s\n" ..
        "|cFF69c8ffOfficer Note|r: %s"

    -- format the string varibales are in order of tokens:
    local formattedTooltip = string.format(tooltipFormat,
        classColor, sender, class,
        level,
        rankColor, rank,
        zone,
        publicN,
        officerN
    )

    return formattedTooltip
end
--#endregion

--#region OnChatMessage: Event CHAT_MSG_GUILD
local function OnChatMessage(self, event, message, sender)
    if not sender or sender == "" then return end

    --Strip server from sender, store in variable
    local normalizedSender = Ambiguate(sender, "none")
    --Declare vars to hold data collected by GuildRosterInfo
    local class, level, rank, zone, publicN, officerN
    for i = 1, GetNumGuildMembers() do
        local name, rankName, _, playerLevel, playerClass, playerZone, publicNote, officerNote, isOnline =
            GetGuildRosterInfo(i)
        --Strip server from player name and match to sender
        if Ambiguate(name, "none") == normalizedSender and isOnline then
            --if a match is found and the player is online assign data to variables
            class = playerClass or "Unknown"
            level = playerLevel or "??"
            rank = rankName or "Unranked"
            zone = playerZone or "Unknown"
            publicN = publicNote or "None"
            officerN = officerNote or "None"
            break
        end
    end

    -- If key data is not assigned function ends
    if not class or not level or not rank then
        print("|cFFFF0000ERROR: class, level or rank missing|r Function OnChatMessage")
        return
    end

    -- Check existing data
    local existingData = OG_TooltipInfoTable[normalizedSender]
    if existingData then
        if existingData.zone ~= zone then
            existingData.zone = zone
        end

        if existingData.level ~= level then
            existingData.level = level
        end

        if existingData.rank ~= rank then
            existingData.rank = rank
        end

        -- Update the formatted tooltip
        existingData.formattedTooltip = tooltipSpice(sender, existingData.level, class, existingData.zone,
            existingData.rank, publicN, officerN)
    else
        -- Add new data to table and pass it to spice function
        OG_TooltipInfoTable[normalizedSender] = {
            sender = sender,
            level = level,
            class = class,
            zone = zone,
            rank = rank,
            publicNote = publicN,
            officerNote = officerN,
            formattedTooltip = tooltipSpice(sender, level, class, zone, rank, publicN, officerN)
        }
    end

    --setup varible to store the return of chatMessageSpice
    local chatMessage = chatMessageSpice(sender, message, class)
    -- Add chatMessage to OG_ChatMessageTable
    if not tContains(OG_ChatMessageTable, chatMessage) then
        table.insert(OG_ChatMessageTable, chatMessage)
        --Wait .1 seconds for table to be updated then on it goes
        C_Timer.After(0.1, function()
            updateTargetEditBoxText(GuildChatWindow.editBox, OG_ChatMessageTable)
        end)
    end
    --Play a click for each CHAT_MSG_GUILD event

    if OldGodsDB.soundEnabled then
        PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\Chatmessage.mp3", "Master")
    end
end

local OnChatMessageEventFrame = CreateFrame("Frame")
OnChatMessageEventFrame:RegisterEvent("CHAT_MSG_GUILD")
OnChatMessageEventFrame:SetScript("OnEvent", OnChatMessage)
--#endregion OnChatMessage ends here

--#region Auto Messaging: Event CHAT_MSG_GUILD
local AfkMsg_lastSentTime = 0
local AfkMsg_cooldown = 45

-- Function that sends the AFK message
local function sendAutoMsg(sender)
    local currentTime = GetTime()
    local normalizedSender = Ambiguate(sender, "None")

    -- Check if the cooldown has ended
    if currentTime - AfkMsg_lastSentTime < AfkMsg_cooldown then
        local alertSpamBLOCK = string.format("|cFF00FF00Spam prevented|r: triggered by %s", normalizedSender)
        print(alertSpamBLOCK)
        return -- exit if cooldown not ended
    end

    AfkMsg_lastSentTime = currentTime -- Reset the cooldown
    -- use saved reply, fallback if missing
    local reply = (OG_AfkMsg and OG_AfkMsg.reply) or "I'm AFK right now."
    C_ChatInfo.SendChatMessage(reply, "GUILD")
end

--onTriggerWord called on each CHAT_MSG_GUILD event
local function onTriggerWord(self, event, message, sender)
    --[[ Check if the player (me) is AFK or in combat
    if not UnitIsAFK("player") and not InCombatLockdown() then
        return --function stops if not afk or in combat
    end
    ]]

    -- check against saved trigger word(s)
    if OG_AfkMsg and OG_AfkMsg.trigger and message:lower():find(OG_AfkMsg.trigger:lower()) then
        sendAutoMsg(sender)
    end
end

--event frame
local AfkMsg_frame = CreateFrame("Frame")
AfkMsg_frame:RegisterEvent("CHAT_MSG_GUILD")
AfkMsg_frame:SetScript("OnEvent", onTriggerWord)
--#endregion AUTO MESSAGES ends here

--#region reworked Help Window
local jokedataFrame
local quotedataFrame
local helpdataFrame

local function createDataWindow(dataTable, title, nextPageWindowFunc)
    local dataFrame = CreateFrame("Frame", nil, UIParent, "BasicFrameTemplateWithInset")
    dataFrame:SetSize(400, 500)
    dataFrame:SetPoint("CENTER")
    dataFrame:SetMovable(true)
    dataFrame:EnableMouse(true)
    dataFrame:RegisterForDrag("LeftButton")
    dataFrame:SetScript("OnDragStart", dataFrame.StartMoving)
    dataFrame:SetScript("OnDragStop", dataFrame.StopMovingOrSizing)
    dataFrame:Hide() --recycle frame

    -- Title position
    dataFrame.title = dataFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    dataFrame.title:SetPoint("TOP", dataFrame, "TOP", 0, -5)
    dataFrame.title:SetText(title)

    -- ScrollFrame
    local scrollFrame = CreateFrame("ScrollFrame", nil, dataFrame, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", dataFrame, "TOPLEFT", 10, -50)
    scrollFrame:SetPoint("BOTTOMRIGHT", dataFrame, "BOTTOMRIGHT", -30, 50)

    local scrollChild = CreateFrame("Frame")
    scrollChild:SetWidth(380)
    scrollFrame:SetScrollChild(scrollChild)
    dataFrame.scrollChild = scrollChild

    -- Populate the "window" with the table lines from the table passed to createDataWindow()
    local yOffset = -5

    for i, line in ipairs(dataTable) do
        -- Line number position
        local lineNumber = scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        lineNumber:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 0, yOffset)
        lineNumber:SetText(string.format("|cFF00FF00(|r|cFFFFFFFF%d|r|cFF00FF00)|r:", i))

        -- Line text position beside its line number
        local lineText = scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        lineText:SetPoint("TOPLEFT", lineNumber, "TOPRIGHT", 5, 0) -- Offset next to the line number
        lineText:SetWidth(300)                                     -- Set a fixed width to allow wrapping
        lineText:SetWordWrap(true)
        -- Ensure the line is a valid string before setting text
        if type(line) == "string" then
            lineText:SetText(line) --
        else
            lineText:SetText("Invalid line data")
        end
        -- Adjust the yOffset for the next line
        local lineHeight = lineText:GetStringHeight()
        yOffset = yOffset - (lineHeight + 10)
    end

    -- Adjust scrollChild height dynamically based on content
    scrollChild:SetHeight(math.abs(yOffset) + 10)

    -- Close button the X in top right of the window
    local closeButton = CreateFrame("Button", nil, dataFrame, "UIPanelCloseButton")
    closeButton:SetPoint("TOPRIGHT", dataFrame, "TOPRIGHT")

    -- "Next Page" Button
    local nextPageButton = CreateFrame("Button", nil, dataFrame, "GameMenuButtonTemplate")
    nextPageButton:SetSize(120, 30)
    nextPageButton:SetPoint("BOTTOMRIGHT", dataFrame, "BOTTOMRIGHT", -10, 10)
    nextPageButton:SetText("Next Page") -- button text here
    nextPageButton:SetNormalFontObject("GameFontNormal")
    nextPageButton:SetHighlightFontObject("GameFontHighlight")

    -- define what happens when the Next Page button is clicked
    nextPageButton:SetScript("OnClick", function()
        dataFrame:Hide()
        nextPageWindowFunc()
    end)

    -- "Help" Button
    local HelpButton = CreateFrame("Button", nil, dataFrame, "GameMenuButtonTemplate")
    HelpButton:SetSize(120, 30)
    HelpButton:SetPoint("BOTTOMLEFT", dataFrame, "BOTTOMLEFT", 10, 10)
    HelpButton:SetText("Help") -- button text here
    HelpButton:SetNormalFontObject("GameFontNormal")
    HelpButton:SetHighlightFontObject("GameFontHighlight")

    HelpButton:SetScript("OnClick", function()
        dataFrame:Hide()
        helpdataFrame:Show()
    end)

    return dataFrame
end

--dataFrame initializers functions
local function OG_ShowHelpdataFrame()
    helpdataFrame:Show()
end

local function OG_ShowJokedataFrame()
    jokedataFrame:Show()
end

local function OG_ShowQuotedataFrame()
    quotedataFrame:Show()
end

jokedataFrame = createDataWindow(JokeData, "Jokes Index", OG_ShowQuotedataFrame)
quotedataFrame = createDataWindow(QuoteData, "Quotes Index", OG_ShowHelpdataFrame)
helpdataFrame = createDataWindow(helpData, "Old Gods - Help", OG_ShowJokedataFrame)
--#endregion reworked Help Window

--#region Slash Command called functions
local function sendSpecificLineToGuild(lineNumber)
    local line = JokeData[lineNumber]
    if line then
        C_ChatInfo.SendChatMessage(line, "GUILD")
    else
        print("Invalid line number.")
    end
end

-- Function to send specific line number from QuoteData table
local function sendSpecificQuoteLineToGuild(qlineNumber)
    local qline = QuoteData[qlineNumber]
    if qline then
        C_ChatInfo.SendChatMessage(qline, "GUILD")
    else
        print("Invalid line number.")
    end
end

-- Function to send specific line number from GuildData table
local function sendSpecificOGLineToGuild(glineNumber)
    local gline = GuildData[glineNumber]
    if gline then
        C_ChatInfo.SendChatMessage(gline, "GUILD")
        print(string.format("Line %d from GuildData table was sent.", glineNumber))
    else
        print("Invalid line number.")
    end
end

-- Function to send a random line from JokeData table
local function sendRandomJokeToGuild()
    local maxIndex = #JokeData
    if maxIndex == 0 then
        print("Error: No jokes available.")
        return
    end

    local lineNumber = math.random(1, maxIndex)
    local line = JokeData[lineNumber]
    if line then
        C_ChatInfo.SendChatMessage(line, "GUILD")
        print(string.format("Line %d from JokeData table was sent.", lineNumber))
    else
        print("Error: No line found.")
    end
end

-- Function to send a random line from QuoteData table
local function sendRandQuote()
    local maxIndex = #QuoteData
    if maxIndex == 0 then
        print("Error: No quotes available.")
        return
    end

    local qlineNumber = math.random(1, maxIndex)
    local qline = QuoteData[qlineNumber]
    if qline then
        C_ChatInfo.SendChatMessage(qline, "GUILD")
        print(string.format("Line %d from QuoteData table", qlineNumber))
    else
        print("Error: No line found.")
    end
end

-- Slash command handler for specific and random lines
SLASH_OG1 = "/OG"
SlashCmdList["OG"] = function(msg)
    -- Trim whitespace from input and convert to lowercase
    msg = msg:lower():gsub("^%s*(.-)%s*$", "%1")

    -- Handle specific commands
    if msg:match("^guild %d+$") then
        local glineNumber = tonumber(msg:match("^guild (%d+)$"))
        sendSpecificOGLineToGuild(glineNumber)
    elseif msg == "joke" then
        sendRandomJokeToGuild()
    elseif msg == "quote" then
        sendRandQuote()
    elseif tonumber(msg) then
        local lineNumber = tonumber(msg)
        sendSpecificLineToGuild(lineNumber)
    else
        print("Type /OGHELP for tips and more details.")
    end
end

SLASH_OGQ1 = "/OGQ"
SlashCmdList["OGQ"] = function(msg)
    local qlineNumber = tonumber(msg)
    if qlineNumber then
        sendSpecificQuoteLineToGuild(qlineNumber)
    else
        print("Type /OGHELP for tips and more details.")
    end
end
--#endregion Slash called Functions ends

--#region Slash Commands
-- Slash command toggles the "Chat History" window
SLASH_CHATHISTORY1 = "/OGCH"
SlashCmdList["CHATHISTORY"] = function()
    if SavedChatHistoryWindow:IsShown() then
        SavedChatHistoryWindow:Hide()
    else
        SavedChatHistoryWindow:Show()
    end
end

-- Slash commmand to toggle the window for the Jokes page
SLASH_JokeData1 = "/OGJL"
SlashCmdList["JOKEDATA"] = function()
    if jokedataFrame:IsShown() then
        jokedataFrame:Hide()
    else
        jokedataFrame:Show()
    end
end

-- Slash command to toggle the window for the Quotes page
SLASH_QUOTEDATA1 = "/OGQL"
SlashCmdList["QUOTEDATA"] = function()
    if quotedataFrame:IsShown() then
        quotedataFrame:Hide()
    else
        quotedataFrame:Show()
    end
end

-- Slash command to toggle the window for the Help page
SLASH_HELPDATA1 = "/OGHELP"
SlashCmdList["HELPDATA"] = function()
    if helpdataFrame:IsShown() then
        helpdataFrame:Hide()
    else
        helpdataFrame:Show()
    end
end
--#endregion slash commands ends

--#region primary initialize function
local function InitializeTheme()
    --Load saved colors into CurrentTheme
    for key, value in pairs(OldGodsSavedColors) do
        -- Theme keys match the saved keys?
        local resolvedValue = ResolveNestedKey(OG_Themes["Your Custom Theme"], key)
        -- if so apply the saved value to the theme
        if resolvedValue then
            ResolveNestedKey(OG_Themes["Your Custom Theme"], key, value)
        end
    end

    -- Apply the user saved theme to the GuildChatWindow
    ApplyTheme(GuildChatWindow, OG_Themes["Your Custom Theme"])
    --init emoji handler
    OldGods_Emoji:Enable()

    C_Timer.After(10, function()
        CreateThemeForPlayersGuild(GuildChatWindow)
    end)
end
--#endregion primary Initialize function ends

--#region Initialize AddOn: Event ADDON_LOADED
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, name)
    if name == "OldGods" then
        -- load user settings
        if OldGodsDB then
            if OldGodsDB.soundEnabled == nil then
                OldGodsDB.soundEnabled = true
            end
            soundEnabled = OldGodsDB.soundEnabled
        end

        --set Global easter egg sound vars state
        OG_leaveSoundPlayed = false
        OG_clickedSoundPlayed = false

        -- Print addon loaded message in chat frame
        print(
            "|cFF0000FF<|rOld Gods|cFF0000FF>|r |TInterface\\AddOns\\OldGods\\Textures\\addOnOk.tga:18:18|t |cFFf0FF00Addon Loaded|r\n" ..
            "|cFF0000FF<|rOld Gods|cFF0000FF>|r |TInterface\\AddOns\\OldGods\\Textures\\fetchData.tga:18:18|t initializing")

        --apply the theme
        InitializeTheme()

        -- load the users save chats
        if OGsavedChat then
            local updatedTitle = UpdateChatHistoryTitle(OGsavedChat)
            updateTargetEditBoxText(SavedChatHistoryWindow.editBox, OGsavedChat)
            SavedChatHistoryWindow.title:SetText(updatedTitle)
            SavedChatHistoryWindow:Hide()
        end
    end
end)
--#endregion ADDON_LOADED ends END OF FILE thanks for watching
