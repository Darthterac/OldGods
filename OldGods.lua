--#region Global SavedVariables and Tables
OGsavedChat = OGsavedChat or {}
ChatMessageTable = {}
TooltipInfoTable = {}
OldGods_BadMailDB = OldGods_BadMailDB or {}
OldGods_AutoReturnEnabled = OldGods_AutoReturnEnabled or false

Themes = {
    ["Your Custom Theme"] = {
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
            scrollFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
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
        scrollThumbTexture = 2022762,
        scrollThumbSize = { width = 18, height = 18 },
        buttonBgColor = { r = 1, g = 1, b = 1, a = 1 },
        buttonBorderColor = { r = 0.0, g = 0.0, b = 0.0, a = 1 },
        iconTexture = 1455894,
        iconSize = { width = 48, height = 48 },
    }, -- Custom theme saved to saved variables
    ["Horde"] = {
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
                left = 2,
                right = 2,
                top = 2,
                bottom = 2
            },
            scrollFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
        },
        theStefak = {
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
            isEditBoxBG = { r = 0.44, g = 0.114, b = 0.051, a = 0.745 }, --Deep Red rgb01(0.439, 0.114, 0.051, 0.749)
            isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 },
        },
        titleColor = { r = 0.8, g = 0.224, b = 0.125, 0.895 }, -- Horde red
        TITLE_font = "Fonts\\FRIZQT__.TTF",
        TITLE_fontSize = 20,
        scrollThumbTexture = 516953,                                 --[516953]="Interface/Timer/Horde-Logo"
        scrollThumbSize = { width = 32, height = 32 },
        buttonBgColor = { r = 0.85, g = 0.05, b = 0.05, a = 0.750 }, --DARK DARK GREY
        buttonBorderColor = { r = 0.0, g = 0.0, b = 0.0, a = 1 },    --BLACK
        iconTexture = 132485,                                        --Horde Flag
        iconSize = { width = 48, height = 48 },
    },
    ["Alliance"] = {
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
            scrollFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
        },
        theStefak = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 2,
            insets = {
                left = 0,
                right = 0,
                top = 2,
                bottom = 2
            },
            cristaFrameBGColor = { r = 1, g = 1, b = 1, a = 0 },
            cristaFrameBorderColor = { r = 1, g = 0.875, b = 0.024, a = 0.785 }, -- Gold, slight orange rgb01(1, 0.875, 0.024, 0.788)
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
            isEditBoxBG = { r = 0, g = 0, b = 0.275, a = 0.785 }, -- dark blue rgb01(0, 0, 0.278, 0.788)
            isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 },
        },
        titleColor = { r = 0.894, g = 0.91, b = 0.055, 0.859 }, -- Alliance Gold rgb01(0.894, 0.91, 0.055, 0.859)
        TITLE_font = "Fonts\\FRIZQT__.TTF",
        TITLE_fontSize = 18,
        scrollThumbTexture = 516949, --Alliance Nice texture forget how i got it
        scrollThumbSize = { width = 32, height = 32 },
        buttonBgColor = { r = 0.161, g = 0.165, b = 0.18, a = 0.785 },
        buttonBorderColor = { r = 0.345, g = 0.345, b = 0.355, a = 1 },
        iconTexture = 132486,
        iconSize = { width = 48, height = 48 },
    },
    ["Hacker"] = {
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
            edgeFile = "Interface\\AddOns\\OldGods\\Textures\\hackerborder.tga",
            tile = false,
            tileSize = 0,
            edgeSize = 0,
            insets = {
                left = 0,
                right = 0,
                top = 0,
                bottom = 0
            },
            scrollFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
        },
        theStefak = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\AddOns\\OldGods\\Textures\\hackerborder.tga",
            tile = true,
            tileSize = 16,
            edgeSize = 2,
            insets = {
                left = 2,
                right = 2,
                top = 2,
                bottom = 2
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
        TITLE_fontSize = 16,
        titleColor = { r = 0.25, g = .985, b = 0.15 },
        scrollThumbTexture = 1394890, -- Generic green texture
        scrollThumbSize = { width = 16, height = 16 },
        buttonBgColor = { r = .895, g = .895, b = .895, a = .55 },
        buttonBorderColor = { r = 0.0, g = 0.8, b = 0.225, a = 0.75 },
        iconTexture = 4667414, --green skull of awesome
        iconSize = { width = 48, height = 48 },
    },
    ["ChatGPT"] = {
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
            scrollFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
        },
        theStefak = {
            bgFile = "Interface\\Buttons\\WHITE8x8",
            edgeFile = "Interface\\Buttons\\WHITE8x8",
            tile = false,
            tileSize = 0,
            edgeSize = 2,
            insets = {
                left = 0,
                right = 0,
                top = 2,
                bottom = 1
            },
            cristaFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            cristaFrameBorderColor = { r = 0.078, g = 0.961, b = 0.643, a = 0.895 }, -- light blue green, teal? idk rgb01(0.078, 0.961, 0.643)
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
            isEditBoxBG = { r = 0.118, g = 0.31, b = 0.275, a = 0.835 }, -- Dark Green Blue rgb01(0.118, 0.31, 0.278, 0.839)
            isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 },
        },
        TITLE_font = "Fonts\\FRIZQT__.TTF",
        TITLE_fontSize = 14,
        titleColor = { r = 0.29, g = 1, b = 0.888, 0.658 },       -- rgb01(0.29, 1, 0.808)
        scrollThumbTexture = 606551,                              -- [606551]="Interface/Icons/Ability_Monk_TigerPalm",
        scrollThumbSize = { width = 20, height = 20 },
        buttonBgColor = { r = 0.1, g = 0.2, b = 0.3, a = 0.9 },   -- Dark teal
        buttonBorderColor = { r = 0.0, g = 0.5, b = 0.4, a = 1 }, -- Green border
        iconTexture = 5648287,                                    --[5648287]="Interface/Icons/INV_BabyArathiLynx_white",
        iconSize = { width = 48, height = 48 },
    },
    ["WoW Theme"] = {
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
            bgFile = "Interface\\AddOns\\OldGods\\Textures\\WoWlogo.tga",
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
            scrollFrameBGColor = { r = 0, g = 0, b = 0, a = 0 },
            scrollFrameBorderColor = { r = 0, g = 0, b = 0, a = 0 },
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
            isEditBoxBG = { r = 0.278, g = 0.184, b = 0.078, a = 0.77 }, -- brown rgb01(0.278, 0.184, 0.078, 0.769)
            isEditBoxBorder = { r = 0, g = 0, b = 0, a = 0 },
        },
        TITLE_font = "Fonts\\MORPHEUS.ttf",
        TITLE_fontSize = 19,
        titleColor = { r = 1, g = 0.769, b = 0.216 },                   -- orange yellow rgb01(1, 0.769, 0.216)
        scrollThumbTexture = 511913,                                    --511913]="Interface/ChatFrame/UI-ChatIcon-WoW",
        scrollThumbSize = { width = 18, height = 18 },
        buttonBgColor = { r = 0.2, g = 0.1, b = 0.05, a = 0.625 },      -- rgb01(0.678, 0.678, 0.678)
        buttonBorderColor = { r = 1, g = 0.769, b = 0.216, a = 0.850 }, -- yellow orangeish
        iconTexture = 1120721,
        iconSize = { width = 52, height = 52 },
    },
}

Fonts = {
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

FrameBackdrop = {
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

--#endregion Global Variables and Tables

--#region Jokes Quotes Guild Tables
local JokeData = { "Why cant you trust an atom? Because they make up literally everything.",
    "What happens to an illegally parked frog? It gets toad away.",
    "Why did the parents not like their sons biology teacher? He had skeletons in his closet.",
    "A Freudian slip is when you say one thing but mean your mother.",
    "What do you call a bear with no teeth?                   A gummy bear.",
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
    "It takes guts to be an organ donor." }

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

local helpData = { "Welcome to the |cAA0040FFOld Gods|r AddOn!", "To use this AddOn is very simple, heres how",
    "Type |cFFCCAA99/OG JOKE|r for a random joke", "Type |cFFCCAA99/OG QUOTE|r for a random quote",
    "Type |cFFCCAA99/OG GUILD #|r specific Guild msgs", "Type |cFFCCAA99/OG #|r for specific Joke",
    "Type |cFFCCAA99/OGQ #|r for specific Quote", "To get a line # and corresponding msg",
    "click the |cFF0DAF00next page|r button", "________________________________________",
    "by |cFF7ba9FFLazyeyez|r with help from |cFF00F906chatGPT|r",
    "________________________________________", "|cCF99000AWork in progress|r" }

local GuildData = {
    "Welcome to the Old Gods {skull} Lightbringer Chapter {skull} Join our Discord @ https://discord.gg/oldgods to rankup to Member! {star} Make a post in #new_member_info exactly as 'YourName@Lightbringer_Chapter' {X}DO NOT ALTER ANYTHING BUT YOUR NAME{X}",
    "Attention, guildmates {skull}! The purge begins soon. Expect kicked player alerts—don’t be alarmed. We’re trimming inactive members to keep us strong. Remain active and loyal. Long live The Old Gods! {triangle}",
    "Friends, the purge is complete. Take a moment to breathe—our ranks are refreshed. Initiates, please log in every 14 days to keep your place. Members, every 28 days will suffice. We stand united, renewed, and stronger than ever." }
--#endregion tables end

--#region Main and Utility functions
local function SumTableData(table_name)
    local size = 0
    if type(table_name) == "table" then
        for key, value in pairs(table_name) do
            size = size + #tostring(key) + #tostring(value)
        end
    end
    return size -- return the result when loop breaks
end

local function deleteTable(tableName)
    if type(tableName) == "table" then
        for key in pairs(tableName) do
            tableName[key] = nil
        end
    end
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
    for name, data in pairs(Themes) do
        if data == CurrentTheme then
            return name
        end
    end
    return nil -- Fallback if no match is found
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
        return "Possibly not a table"
    end

    local table_size = SumTableData(table_name)
    local size_in_kb = math.max(table_size / 1024, 0) -- Avoid negative values
    return string.format("MEMORY FREED: (%.2f KB)", size_in_kb)
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

--#endregion UTILITY FUNCTIONS ends

--#region Themes and Fonts functions
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
    if frame.editBox then
        ApplyEditBoxTheme(frame.editBox, theme)
    end
    CurrentTheme = theme
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
        if frame.ScrollFrame and theme.scrollThumbTexture and theme.scrollThumbSize then
            local scrollBar = frame.ScrollFrame.ScrollBar
            if scrollBar then
                local thumb = scrollBar:GetThumbTexture()
                if thumb then
                    thumb:SetTexture(theme.scrollThumbTexture)
                    thumb:SetSize(theme.scrollThumbSize.width, theme.scrollThumbSize.height)
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
                theme.titleColor.b
            )
        end
    end

    -- Apply Icon Styling
    if frame.icon and theme.iconTexture and theme.iconSize then
        frame.icon:SetTexture(theme.iconTexture)
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

--[[ Drop Downs moved to optionsFrame General tab
local function CreateThemeDropdown(window, themes)
    local dropdown = CreateFrame("Frame", "ThemeDropdown", window, "UIDropDownMenuTemplate")
    dropdown:SetPoint("BOTTOMRIGHT", -138, 5)

    -- Set default text for the dropdown
    UIDropDownMenu_SetText(dropdown, "Themes")

    UIDropDownMenu_Initialize(dropdown, function(self, level)
        local info = UIDropDownMenu_CreateInfo()
        for themeName, themeData in pairs(themes) do
            info.text = themeName
            info.value = themeName
            info.func = function()
                -- Update dropdown text
                UIDropDownMenu_SetText(dropdown, themeName)
                -- Apply the theme to the window
                ApplyTheme(window, themeData)
            end
            UIDropDownMenu_AddButton(info, level)
        end
    end)
end
local function CreateFontDropdown(window, fonts)
    local fdropdown = CreateFrame("Frame", "FontDropdown", window, "UIDropDownMenuTemplate")
    fdropdown:SetPoint("TOPLEFT", 5, -5) -- Adjust positioning

    -- Set default text for the dropdown
    UIDropDownMenu_SetText(fdropdown, "Fonts")

    UIDropDownMenu_Initialize(fdropdown, function(self, level)
        local info = UIDropDownMenu_CreateInfo()
        for fontName, fontData in pairs(fonts) do
            info.text = fontName
            info.value = fontName
            info.func = function()
                -- Update dropdown text
                UIDropDownMenu_SetText(fdropdown, fontName)
                -- Apply the font to the edit box
                ApplyFont(window.editBox, fontData)
                window.editBox:SetTextInsets(5, 5, 5, 5)
                window.ScrollFrame:SetVerticalScroll(window.ScrollFrame:GetVerticalScrollRange())
            end
            UIDropDownMenu_AddButton(info, level)
        end
    end)
end]]
--#endregion Themes and Fonts ends

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
--INITIALIZE
local SavedChatHistoryWindow = CreateSavedChatHistoryWindow("Chat History")
--#endregion Chat History window

--#region Mail Frame, or fame who knows!
local frame = CreateFrame("Frame", "OldGodsMailFrame", UIParent, "BasicFrameTemplateWithInset")
frame:SetSize(380, 460)
frame:SetPoint("CENTER")
frame.title = frame:CreateFontString(nil, "OVERLAY")
frame.title:SetFontObject("GameFontHighlight")
frame.title:SetPoint("TOP", frame, "TOP", 0, -5)
frame.title:SetText("Old Gods Grief Mail Manager")

frame.scroll = CreateFrame("ScrollFrame", "OldGodsMailScroll", frame, "UIPanelScrollFrameTemplate")
frame.scroll:SetSize(360, 285)
frame.scroll:SetPoint("TOP", frame, "TOP", 0, -30)

local content = CreateFrame("Frame", nil, frame.scroll)
content:SetSize(360, 285)
frame.scroll:SetScrollChild(content)

local selectedItemID = nil
local selectedMailIndex = nil
local selectedItemIcon = nil

local selectedDisplay = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
selectedDisplay:SetPoint("BOTTOM", frame, "BOTTOM", 0, 75)
selectedDisplay:SetText("No Item Selected")

local selectedIcon = frame:CreateTexture(nil, "ARTWORK")
selectedIcon:SetSize(35, 35)
selectedIcon:SetPoint("BOTTOMLEFT", selectedDisplay, "TOPLEFT", -40, 0)

-- Checkbox for Auto-Return
local autoReturnCheck = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate")
autoReturnCheck:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 3, 46)
autoReturnCheck.text = autoReturnCheck:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
autoReturnCheck.text:SetPoint("LEFT", autoReturnCheck, "RIGHT", 5, 0)
autoReturnCheck.text:SetText("|cFFFFFF3CSelect All Items|r then |cFFA0FF0CClick \"Return Selected\"|r")
autoReturnCheck:SetChecked(OldGods_AutoReturnEnabled)

autoReturnCheck:SetScript("OnClick", function(self)
    OldGods_AutoReturnEnabled = self:GetChecked() -- Save state
    print("Auto-Return is now", OldGods_AutoReturnEnabled and "ENABLED" or "DISABLED")
end)

local returnButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
returnButton:SetSize(140, 30)
returnButton:SetPoint("BOTTOM", frame, "BOTTOM", 100, 10)
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

            -- Either reuse an existing button or create a new one, I dont care, I want buttons
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
                btn.icon:SetSize(35, 35) --35 match the hight of the buttons cause im gona be skinning this with themes
                btn.icon:SetPoint("LEFT", btn, "LEFT", -10, 0)
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
local OGM_inputBox = CreateFrame("EditBox", nil, frame, "InputBoxTemplate")
OGM_inputBox:SetSize(110, 35)
OGM_inputBox:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 25, 10)
OGM_inputBox:SetAutoFocus(false)
OGM_inputBox:SetText("Enter Item ID")
OGM_inputBox:EnableMouse(true)
OGM_inputBox:SetHyperlinksEnabled(true)
OGM_inputBox:SetMaxLetters(3999)
OGM_inputBox:SetScript("OnMouseDown", function(self)
    self:SetFocus() -- Ensure inputBox is focused
    --self:HighlightText()    -- Highlight the text? no why the hell would you do that?
end)

--The magic hooksecurefunc we need to learn more about this, and we are now, so there!
hooksecurefunc("ChatEdit_InsertLink", function(link)
    if link and OGM_inputBox:HasFocus() then
        local itemID = link:match("item:(%d+)") -- Extract the item ID from the link, dont ask I match and I extract
        if itemID then                          -- but I ask chatGPT everytime I have to make a pattern, one day!!!
            OGM_inputBox:SetText(itemID)        -- Set the inputBox text to the item ID numbers
            --print("Shift+Click detected! Item ID:", itemID) no need for a debug message I can see the results ;)
        end
        OGM_inputBox:ClearFocus() -- Clear focus
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
local addButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
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

-- Populate the Scroll Frame on Mailbox Open
frame:RegisterEvent("MAIL_SHOW")
frame:RegisterEvent("MAIL_CLOSED")
frame:SetScript("OnEvent", function(self, event)
    if event == "MAIL_SHOW" then
        frame:Show()
        UpdateItemList()
    elseif event == "MAIL_CLOSED" then
        if frame:IsShown() then
            frame:Hide()
        end
    end
end)

frame:Hide()
--#endregion Mail Frame, or fame who knows!

--#region Guild Chat Window
local function CreateGuildChatWindow(title)
    -- Create the parent frame for the Guild Chat GUI
    local GuildChatWindow = CreateFrame("Frame", "GuildChatWindow", UIParent, "BackdropTemplate")
    GuildChatWindow:SetSize(524, 260) -- width, height
    GuildChatWindow:SetPoint("BOTTOMLEFT", UIParent)
    GuildChatWindow:SetFrameStrata("HIGH")
    GuildChatWindow:SetFrameLevel(3)
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
    GuildChatWindow.title = GuildChatWindow:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    GuildChatWindow.title:SetPoint("CENTER", GuildChatWindow, "TOP", 0, -15)
    GuildChatWindow.title:SetText(title)

    local iconFrame = GuildChatWindow:CreateTexture()
    iconFrame:SetPoint("BOTTOMLEFT", GuildChatWindow, "BOTTOMLEFT", 7, 9)
    GuildChatWindow.icon = iconFrame

    local cristaFrame = CreateFrame("Frame", nil, GuildChatWindow, "BackdropTemplate")
    cristaFrame:SetFrameStrata("HIGH")
    cristaFrame:SetFrameLevel(3)
    cristaFrame:SetSize(GuildChatWindow:GetWidth() - 40, GuildChatWindow:GetHeight() - 115)
    cristaFrame:SetPoint("TOPLEFT", GuildChatWindow, "TOPLEFT", 16, -30)
    cristaFrame:SetPoint("BOTTOMRIGHT", GuildChatWindow, "BOTTOMRIGHT", -30, 85)
    GuildChatWindow.cristaFrame = cristaFrame

    local scrollFrame = CreateFrame("ScrollFrame", nil, GuildChatWindow, "BackdropTemplate, UIPanelScrollFrameTemplate")
    scrollFrame:SetFrameStrata("HIGH") -- Default is MEDIUM, adjust if needed
    scrollFrame:SetFrameLevel(4)       -- Set a higher frame level within the strata
    scrollFrame:SetSize(GuildChatWindow:GetWidth() - 40, GuildChatWindow:GetHeight() - 115)
    scrollFrame:SetPoint("TOPLEFT", GuildChatWindow, "TOPLEFT", 18, -32)
    scrollFrame:SetPoint("BOTTOMRIGHT", GuildChatWindow, "BOTTOMRIGHT", -32, 87)
    scrollFrame:EnableMouseWheel(true)
    GuildChatWindow.ScrollFrame = scrollFrame

    local scrollBar = scrollFrame.ScrollBar
    scrollFrame.scrollBar = scrollBar
    scrollBar:GetThumbTexture()

    local editBox = CreateFrame("EditBox", nil, scrollFrame)
    editBox:SetTextInsets(5, 5, 5, 5)
    editBox:SetFrameStrata("HIGH")
    editBox:SetFrameLevel(5)
    editBox:SetSize(scrollFrame:GetWidth(), scrollFrame:GetHeight())
    editBox:SetPoint("TOPLEFT", scrollFrame)
    editBox:SetPoint("BOTTOMRIGHT", scrollFrame)
    editBox:SetMultiLine(true)
    editBox:SetAutoFocus(false)
    editBox:EnableMouse(true)
    editBox:SetHyperlinksEnabled(true)

    editBox:HookScript("OnHyperlinkClick", function(self, link, text, button)
        if button == "RightButton" then
            ChatFrame_OnHyperlinkShow(self, link, text, button)
        elseif button == "LeftButton" then
            local linkType, linkplayer = strsplit(":", link)
            if linkType == "player" and linkplayer then
                local normalizedSender = Ambiguate(linkplayer, "none")
                local playerData = TooltipInfoTable[normalizedSender]
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
                            edgeFile = "Interface\\AddOns\\OldGods\\Textures\\myBorder.tga", -- Use a default border or your own
                            tile = false,
                            tileSize = 0,
                            edgeSize = 3,
                            insets = { left = -1, right = -1, top = 0, bottom = 0 },
                        })
                        ---@diagnostic disable-next-line: undefined-field
                        GameTooltip:SetBackdropColor(.45, .55, .75, .457)
                        ---@diagnostic disable-next-line: undefined-field
                        GameTooltip:SetBackdropBorderColor(1, 1, 1, 1)
                        GameTooltip.hasCustomBackdrop = true
                    end
                    GameTooltip:Show()
                    --OG_clickedSoundPlayed = false -- global variable set on event ADDON_LOADED
                    if not OG_clickedSoundPlayed then
                        PlaySoundFile(1391166, "Master")
                        OG_clickedSoundPlayed = true --set global variable to true, only PlaySoundFile once per session
                    end                              -- Set flag to true to prevent replay
                else
                    print("No tooltip data for player:", normalizedSender)
                end
            end
        end
        editBox:SetScript("OnHyperlinkLeave", function()
            GameTooltip:Hide()
            --OG_leaveSoundPlayed = false -- global variable set on event ADDON_LOADED
            if not OG_leaveSoundPlayed then
                PlaySoundFile(5834619, "Master")
                OG_leaveSoundPlayed = true --set global variable to true, only PlaySoundFile once per session
            end
        end)
    end)
    scrollFrame:SetScrollChild(editBox)
    GuildChatWindow.editBox = editBox

    local resizeButton = CreateFrame("Button", nil, GuildChatWindow)
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
    local copyButton = CreateFrame("Button", nil, GuildChatWindow, "BackdropTemplate")
    copyButton:SetSize(120, 25)
    copyButton:SetPoint("BOTTOMRIGHT", GuildChatWindow, "BOTTOM", -65, 10)
    copyButton:SetText("Select All")
    copyButton:SetNormalFontObject("GameFontNormal")
    copyButton:SetHighlightFontObject("GameFontHighlight")
    copyButton:SetPushedTexture(5926319)
    copyButton:SetScript("OnClick", function()
        PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert6.mp3")
        editBox:HighlightText()
        editBox:SetFocus()
        print(
            "|cFF00FF00 CTRL+C TO COPY |r")
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
        if type(ChatMessageTable) == "table" then
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-finished-alert3.mp3")
            for _, message in ipairs(ChatMessageTable) do
                if not tContains(OGsavedChat, message) then
                    table.insert(OGsavedChat, message)
                end
            end

            SavedChatHistoryWindow:Show()
            local updatedTitle = UpdateChatHistoryTitle(OGsavedChat)
            local SaveMessage = saveDateMessage(ChatMessageTable)

            updateTargetEditBoxText(SavedChatHistoryWindow.editBox, OGsavedChat)
            SavedChatHistoryWindow.title:SetText(updatedTitle)

            wipe(ChatMessageTable)
            ChatMessageTable = {}
            table.insert(ChatMessageTable, SaveMessage)

            C_Timer.After(0.1, function()
                updateTargetEditBoxText(GuildChatWindow.editBox, ChatMessageTable)
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
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert7.mp3")
            GuildChatWindow:Show()
        else
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-close-alert2.mp3")
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
    topRightCloseButton:SetBackdrop(FrameBackdrop)
    topRightCloseButton:SetBackdropColor(0.204, 0.227, 0.329, 1)
    topRightCloseButton:SetBackdropBorderColor(0.741, 0.176, 0.176, 0.761)
    topRightCloseButton:SetScript("OnClick", function()
        toggleGuildChatWindow = not toggleGuildChatWindow -- Flip the toggle state
        toggleButton:SetText(toggleGuildChatWindow and "Hide Chat" or "Show Chat")
        if toggleGuildChatWindow then
            GuildChatWindow:Show() -- this is the same as the toggleButton:OnClick function but it will never be called
        else
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-close-alert2.mp3")
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

    GuildChatWindow.buttons = { copyButton, SaveClearButton, optionsButton, toggleButton }

    local inputBox = CreateFrame("EditBox", nil, GuildChatWindow, "InputBoxTemplate")
    inputBox:SetSize(400, 35)
    inputBox:SetPoint("BOTTOM", GuildChatWindow, "BOTTOM", 0, 35) -- Position relative to the parent frame
    inputBox:SetAutoFocus(false)                                  -- Prevent auto-focusing the input box
    inputBox:EnableMouse(true)
    inputBox:SetHyperlinksEnabled(true)
    inputBox:SetMaxLetters(3999) -- Set the maximum number of characters I seen this in a movie once
    inputBox:SetScript("OnMouseDown", function(self)
        self:SetFocus()         -- Ensure inputBox is focused
    end)

    --The magic hooksecurefunc we need to learn more about this, used again in the mail manager with some changes
    hooksecurefunc("ChatEdit_InsertLink", function(link)
        if link and inputBox:HasFocus() then
            inputBox:Insert(link) -- Insert the item link into the inputBox
            return true
        end
    end)

    -- Handle the Enter key pressed
    inputBox:SetScript("OnEnterPressed", function(self)
        local message = self:GetText() -- Get the user's input

        -- Check if Shift is being held
        local isShiftDown = IsShiftKeyDown()

        -- Transform the text if Shift is held
        local finalMessage = isShiftDown and fancyTransform(message) or message

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
                    ChatFrame1EditBox:SetText("/og guild")
                    ChatFrame1EditBox:SetFocus()
                    print("Enter a # to send message to guild chat.")
                    print(" |cFF00F0FF[1]|r-|cFF00FF00Welcome Message|r\n".."|cFF00F0FF[2]|r-|cFFF0F002Purge Notice|r\n".."|cFF00F0FF[3]|r-|cFFFF0040Purge Completed|r\n")
                end
            else
                -- Send the final message (fancy or normal) to guild chat
                SendChatMessage(finalMessage, "GUILD")
            end
            self:SetText("")                              -- Clear the input box after processing
        else
            print("Error: Cannot send an empty message.") -- Error for empty input
        end
    end)

    -- Enforce size limits  during resizing
    GuildChatWindow:SetScript("OnSizeChanged", function(self, width, height)
        local minWidth, minHeight = 524, 260
        local maxWidth, maxHeight = 872, 640

        width = math.max(minWidth, math.min(maxWidth, width))
        height = math.max(minHeight, math.min(maxHeight, height))
        self:SetSize(width, height)

        cristaFrame:SetSize(width - 41, height - 111)
        scrollFrame:SetSize(width - 45, height - 115)
        editBox:SetSize(width - 45, height - 115)
        editBox:ClearAllPoints()
        editBox:SetPoint("TOPLEFT", scrollFrame)
        editBox:SetPoint("BOTTOMRIGHT", scrollFrame)

        scrollFrame:SetVerticalScroll(scrollFrame:GetVerticalScrollRange())
    end)

    ApplyFont(GuildChatWindow.editBox, Fonts["Roboto"])

    return GuildChatWindow
end
--Initialize GuildChatWindow
local GuildChatWindow = CreateGuildChatWindow("Guild Chat")
GuildChatWindow:Show()
--#endregion

--#region GUILD_DATA_FUNCTIONS

--#region Sub_region OldGods_ShowInactiveInitiates
local frame, scrollChild

local function closeFrame()
    if frame and frame:IsShown() then
        frame:Hide()
        print("|cFF00FF00OldGods|r: Existing frame closed.")
    end
end

local function GetInactiveInitiates(threshold)
    local inactiveInitiates = {}

    local numGuildMembers = GetNumGuildMembers()
    for i = 1, numGuildMembers do
        local name, rankName = GetGuildRosterInfo(i)
        if rankName == "Initiate" then
            local _, _, days, _ = GetGuildRosterLastOnline(i)
            local macroa, macrob
            days = days and days or 0

            if threshold >= 14 then
                macroa = "/gremove"
                macrob = "\n" .. "/run OldGods_ShowInactiveInitiates()"
            end

            if threshold < 14 then
                macroa = "/who"
                macrob = "\n" .. "/salute"
            end

            if days == threshold then
                -- Add to inactiveInitiates
                table.insert(inactiveInitiates, {
                    name = name,
                    rank = rankName,
                    macro = macroa,
                    macro_n = macrob,
                    totalDaysOffline = days,
                })
            end
        end
    end

    table.sort(inactiveInitiates, function(a, b)
        return a.name < b.name
    end)

    -- Process the macro_Data
    C_Timer.After(0.1, function()
        if #inactiveInitiates > 0 then -- Take the first player and create a macro
            local macro_Data = table.remove(inactiveInitiates, 1)
            local TEMP_STRING = macro_Data.macro .. " " .. macro_Data.name .. macro_Data.macro_n

            --Create it here were not planning on multiple cases no need to modularize just to maintain code standards
            local macroIDname = "A_OldGods_Tool"
            local icon = 134238
            local macroText = TEMP_STRING
            local keyBind = "F5"
            local macroIndex = GetMacroIndexByName(macroIDname)

            -- Check if the macro exists
            if macroIndex == 0 then
                C_Timer.After(0.1, function()
                    if GetNumMacros() < MAX_ACCOUNT_MACROS then
                        CreateMacro(macroIDname, icon, macroText, nil) -- nil for global macros
                        PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-finished-alert5.mp3",
                            "MASTER")
                        print("|cFF0000FF<|rOldGods|cFF0000FF>|r Macro CREATED\n|cFFF0F000Body|r: " .. macroText)
                    else
                        PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-finished-alert4.mp3",
                            "MASTER")
                        print(
                            "|cFF0000FF<|rOldGods|cFF0000FF>|r |cFFC8C800ATTENTION|r - Maximum number of macros reached.|r")
                        return
                    end
                end)
            else
                -- Update the existing macro
                EditMacro(macroIndex, macroIDname, icon, macroText)
                --PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert3.mp3",
                --"MASTER")
                print("|cFF0000FF<|rOldGods|cFF0000FF>|r Macro |cFF00FF00UPDATED|r\n|cFFF0F000Body:" .. macroText)
            end

            -- Bind the macro to a key if provided
            C_Timer.After(0.2, function()
                if keyBind and keyBind ~= "" then
                    SetBindingMacro(keyBind, macroIndex)
                    SaveBindings(GetCurrentBindingSet())
                    print("|cFF0000FF<|rOldGods|cFF0000FF>|r Macro |cFFFF00FFKey Bind|r: " .. keyBind)
                end
            end)
        end
    end)

    return inactiveInitiates
end

local function CreateInactiveInitiatesFrame(parent)
    closeFrame()

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
    scrollChild:SetSize(scrollFrame:GetWidth(), 1) -- Dynamic height based on content
    --#region HeadersIIF
    --local headerstext = { "Name", "Rank", "Last Online" }
    local padding = 5                                                                  -- Padding between columns
    local headerWidth = (scrollFrame:GetWidth() - (#headers - 1) * padding) / #headers -- Dynamic width calc

    --[[for i, headername in ipairs(headerstext) do
        local header = scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        header:SetPoint("TOPLEFT", (i - 1) * (headerWidth + padding), 0)
        header:SetSize(headerWidth, 20)
        header:SetText(headername)
    end]]
    --#endregion HeadersIIF
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
        nameButton:SetText(entry.name)
        nameButton:SetNormalFontObject("GameFontNormal")
        nameButton:SetHighlightFontObject("GameFontHighlight")
        nameButton:GetFontString():SetWordWrap(false)
        nameButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")

        nameButton:SetScript("OnClick", function(self, button)
            if button == "LeftButtonUp" then
                PlaySoundFile(541008, "Master")
                UIErrorsFrame:AddMessage("{star}PRESS F5{star}", 1, 1, .05, 1)
            end
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
    inputBox:SetFrameStrata("FULLSCREEN_DIALOG")
    inputBox:SetFrameLevel(2)
    inputBox:SetAutoFocus(false) -- Don't auto-focus the input box
    --inputBox:SetText("14")       -- Default threshold value set in OldGods_ShowInactiveInitiates function

    -- Add a label
    local label = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("LEFT", inputBox, "LEFT", -49, -3)
    label:SetText("Search: ")
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
        self:ClearFocus() -- Remove focus after pressing Enter
    end)

    inputBox:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(UIParent, "ANCHOR_BOTTOM")
        GameTooltip:AddLine("Search")
        GameTooltip:AddDoubleLine(
            "|cFF00FF00Enter # (1 to 31)|r", "|cFFF0FF00offline|r days\n", 1, 1, 1, 1, 1, 1)
        GameTooltip:AddLine(
            "The result is a list showing |cFFF3F000OFFLINE|r players ranked |cFFF0F300Initiate|r" ..
            " in the guild that match the search terms.\nThe default is set to |cFF00FF0014 days|r. " ..
            "The list is sorted by alphabet, names beginning with |cFF3FFFC0normal characaters|r appear " ..
            "befor names beginning with |cFF3FFFC0Unicode characters|r. ",
            1, 1, 1, true)
        GameTooltip:Show()
    end)

    inputBox:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    return inputBox
end

--#region sub_nest ShowInactiveInitiates Global function
function OldGods_ShowInactiveInitiates()
    local threshold = 14 -- Default threshold
    closeFrame()

    local function RefreshFrame(newThreshold)
        threshold = newThreshold
        local data = GetInactiveInitiates(threshold)

        if #data == 0 then
            print("No Initiates match " .. threshold .. " days offline.")
        else
            PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\echo_beep_alert.mp3", "MASTER")
            print("|cFF00FF00Initiates found|r:" .. #data)
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

--#endregion sub_nest ShowInactiveInitiates Global Function

--#endregion Sub_region OldGods_ShowInactiveInitiates

--#region Sub_region_OldGods_MemberSearch
local guildRosterCache = {}
local searchText
local searchFrame, scrollFrame, SR_scrollChild

-- Refresh the guild roster cache
local function RefreshGuildRosterCache()
    wipe(guildRosterCache) -- Clear old data
    for i = 1, GetNumGuildMembers() do
        local name, rank, _, _, _, _, _, _, online, _, _, _, _, _ = GetGuildRosterInfo(i)
        local _, _, day, hour = GetGuildRosterLastOnline(i)
        day = day and day or 0
        hour = hour and hour or 0
        table.insert(guildRosterCache, {
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

--helper fuction to make searching players with unicode easy with just normal ascii
local function normalizeString(str)
    -- Mapping of ASCII characters to Unicode equivalents
    local charMap = {
        A = "[AÀÁÂÃÄÅĀĂĄǍǺȀȂȦȺÆ]",
        B = "[BßƁƂƄ]",
        C = "[CÇĆĈĊČƇȻ]",
        D = "[DĎĐƊƋƌ]",
        E = "[EÈÉÊËĒĔĖĘĚȄȆȨƏƐÆ]",
        F = "[FƑ]",
        G = "[GĜĞĠĢƓǤǦǴ]",
        H = "[HĤĦȞ]",
        I = "[IÌÍÎÏĨĪĬĮİƗȈȊ]",
        J = "[JĴ]",
        K = "[KĶƘǨ]",
        L = "[LĹĻĽĿŁƚȽ]",
        M = "[MƜ]",
        N = "[NÑŃŅŇŊƝȠ]",
        O = "[OÒÓÔÕÖØŌŎŐǑǪǬǾȌȎȮȰŒ]",
        P = "[PƤ]",
        Q = "[QɊ]",
        R = "[RŔŖŘȐȒɌ]",
        S = "[SŚŜŞŠȘȿß]",
        T = "[TŢŤŦƬƮȚȾ]",
        U = "[UÙÚÛÜŨŪŬŮŰŲȔȖƯǓǕǗǙǛ]",
        V = "[VƲ]",
        W = "[WŴẀẂẄẆẈ]",
        X = "[XẊẌ]",
        Y = "[YÝŶŸȲƳ]",
        Z = "[ZŹŻŽƵȤ]"
    }

    -- Replace each mapped character with the normalized equivalent
    for ascii, pattern in pairs(charMap) do
        str = string.gsub(str, pattern, ascii)
    end

    -- Return the normalized string in uppercase for consistency
    return string.upper(str)
end

-- Dynamic search and Normailzing ascii
local function UpdateSearchResults(searchText)
    ClearSearchResults() -- Remove old results

    local offsetY = 10
    local rowHeight = 20

    -- Normalize the search text
    local normalizedSearch = normalizeString(searchText)

    for _, member in ipairs(guildRosterCache) do
        local normalizedMemberName = normalizeString(member.name)
        local status = member.online and "|cff00ff00Online|r" or
            string.format("|cffff0000Offline|r (%s)", member.lastOnline)

        -- Compare normalized strings
        if normalizedMemberName:find(normalizedSearch) then
            -- Create a new row for each matching result
            local row = CreateFrame("Frame", nil, SR_scrollChild)
            row:SetSize(440, rowHeight)
            row:SetPoint("TOPLEFT", SR_scrollChild, "TOPLEFT", 0, -offsetY)

            ----------------------------------------------------------
            -- 1) Name Column
            ----------------------------------------------------------
            local nameCol = row:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            -- Anchor this to the left edge of the row
            nameCol:SetPoint("LEFT", row, "LEFT", 0, 0)
            -- Set a fixed width
            nameCol:SetWidth(190)
            -- Ensure text is aligned left inside that width
            nameCol:SetJustifyH("LEFT")
            nameCol:SetText(member.name)

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
    inputLabel:SetText("Search:")

    -- Input box for search
    local inputBox = CreateFrame("EditBox", "SearchInputBox", searchFrame, "InputBoxTemplate")
    inputBox:SetSize(200, 30)
    inputBox:SetPoint("LEFT", inputLabel, "RIGHT", 5, 0)
    inputBox:SetAutoFocus(false)
    inputBox:SetScript("OnTextChanged", function(self)
        searchText = self:GetText()
        UpdateSearchResults(searchText)
    end)

    -- Close button
    local closeButton = CreateFrame("Button", nil, searchFrame, "UIPanelCloseButton")
    closeButton:SetPoint("TOPRIGHT", -5, -5)
    closeButton:SetScript("OnClick", function()
        searchFrame:Hide()
    end)
    --#region Headers_SF
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
    --#endregion Headers_SF

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
--#endregion Sub_region_OldGods_MemberSearch

--#endregion GUILD_DATA_FUNCTIONS

--#region Options Frame Details

--#region POPULTATE CONTENT FRAME
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
    ColorPickerFrame.opacity = 1 - (defaultA or 1)                               -- WoW inverts opacity logic
    ColorPickerFrame.hasOpacity = (defaultA ~= nil)
    ColorPickerFrame.opacity = 1 - (defaultA or 1)                               -- WoW inverts opacity logic
    ColorPickerFrame.previousValues = { defaultR, defaultG, defaultB, defaultA } -- Store original color

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

local function AddResetButton(parent, theme, themeName, colorOptions)
    local button = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    button:SetSize(140, 25)
    button:SetText("Reset Colors")


    button:SetScript("OnClick", function()
        local defaults = theme --Themes[themeName]
        if not defaults then
            print("Error: Theme '" .. themeName .. "' not found in Themes.")
            return
        end

        for _, option in ipairs(colorOptions) do
            local key = option.key
            local defaultColor = ResolveNestedKey(defaults, key)

            if defaultColor then
                ResolveNestedKey(theme, key, defaultColor) -- Set the default color in CurrentTheme
                OldGodsSavedColors[key] = nil              -- Clear the saved color for this key
            else
                print("Warning: Key '" .. key .. "' not found in defaults.")
            end
        end

        -- Apply the default theme
        ApplyTheme(GuildChatWindow, defaults)
        print("Theme reset to defaults!")
    end)

    return button
end

local function PopulateContentFrame_ThemeColorSettings(optionsFrame, theme)
    local buttons = {}
    local yOffset = -10 -- Initial Y offset
    local contentFrame = optionsFrame.contentFrame

    -- Define the colors you want to modify
    local colorOptions = {
        { label = "Title Color",        key = "titleColor" },
        { label = "Main Background",    key = "backgroundColor" },
        { label = "Outter Border",      key = "borderColor" },
        { label = "Chat Window",        key = "theAtari.isEditBoxBG" },
        { label = "Chat Window Border", key = "theStefak.cristaFrameBorderColor" },
        { label = "Button Color",       key = "buttonBgColor" },
        { label = "Button Border",      key = "buttonBorderColor" },
    }

    -- Create a button for each color option
    for _, option in ipairs(colorOptions) do
        local button = CreateFrame("Button", nil, contentFrame, "UIPanelButtonTemplate")
        button:SetSize(250, 27)
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

        -- Position the button
        button:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 10, yOffset)
        yOffset = yOffset - 30 -- Move down for the next button
        table.insert(buttons, button)
    end

    local resetButton = AddResetButton(contentFrame, theme, nil, colorOptions)
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
    fontLabel:SetText("Guild Chat Font:")
    fontLabel:SetTextColor(1, 1, 1, 1) -- White text (R, G, B, A)

    -- Create the Font Dropdown
    local fontDropdown = CreateFrame("Frame", "FontDropdown", contentFrame, "UIDropDownMenuTemplate")
    fontDropdown:SetPoint("TOPLEFT", fontLabel, "BOTTOMLEFT", -5, -5)

    UIDropDownMenu_Initialize(fontDropdown, function(self, level)
        for fontName, fontData in pairs(Fonts) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = fontName
            info.value = fontName
            info.func = function()
                -- Apply the selected font to the content frame (or specific elements)
                ApplyFont(GuildChatWindow.editBox, fontData)
                UIDropDownMenu_SetSelectedValue(fontDropdown, fontName)
                print("Selected Font:", fontName)
            end
            UIDropDownMenu_AddButton(info, level)
        end
    end)

    UIDropDownMenu_SetWidth(fontDropdown, 80)
    UIDropDownMenu_SetSelectedValue(fontDropdown, "Acme") -- Default selection

    -- Create a label for the Theme Dropdown
    local themeLabel = contentFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    themeLabel:SetPoint("TOPLEFT", fontDropdown, "BOTTOMLEFT", 5, -20)
    themeLabel:SetText("Guild Chat Theme:")
    themeLabel:SetTextColor(1, 1, 1, 1) -- White text (R, G, B, A)

    -- Create the Theme Dropdown
    local themeDropdown = CreateFrame("Frame", "ThemeDropdown", contentFrame, "UIDropDownMenuTemplate")
    themeDropdown:SetPoint("TOPLEFT", themeLabel, "BOTTOMLEFT", -5, -5)

    UIDropDownMenu_Initialize(themeDropdown, function(self, level)
        for themeName, themeData in pairs(Themes) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = themeName
            info.value = themeName
            info.func = function()
                -- Apply the selected theme to the content frame
                ApplyTheme(GuildChatWindow, themeData)
                --CurrentTheme = themeData
                UIDropDownMenu_SetSelectedValue(themeDropdown, themeName)
                print("Selected Theme:", themeName)
            end
            UIDropDownMenu_AddButton(info, level)
        end
    end)
    UIDropDownMenu_SetWidth(themeDropdown, 80)
    UIDropDownMenu_SetSelectedValue(themeDropdown, "Your Custom Theme") -- Default selection
end
--#endregion populate General settings

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
        { label = "x2",                 key = dummyFunction },
        { label = "x3",                 key = dummyFunction },
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

local function ShowGuildSettings(optionsFrame)
    ClearContentFrame(optionsFrame)
    optionsFrame:Show()
    PopulateContentFrame_GuildSettings(optionsFrame)
end
--#endregion Navigation buttons callback functions

--#endregion Options Frame Details

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
    -- TEXT LABEL (Example: info text in the content area)
    ------------------------------------------------------------------
    local fontLabel = optionsFrame.contentFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLeft")
    fontLabel:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 15, -15)
    fontLabel:SetJustifyH("LEFT")
    fontLabel:SetJustifyV("TOP")
    fontLabel:SetText("|cFF00FF00Welcome to the Old Gods Guild Chat AddOn|r\n\n" ..
        "Navigate each Setting and Option by clicking\non the nav buttons in the left-hand section.\n\n" ..
        "The |cFF00FF00General|r settings include\nFont and Theme selections and other misc. settings.\n\n" ..
        "The |cFF00FF00Colors|r settings are only available\nwhen the |cFFFFFF00'Your Custom Theme'|r is chosen.\n\n" ..
        "The |cFF00FF00Sounds|r settings let you choose sounds\nor disable sounds used by this AddOn.\n" ..
        "LOTS of sounds included with this addon use the\n|cFFFFFF00LibSharedMedia-3.0|r library,\n" ..
        "which are shared with other AddOns.\n\n" ..
        "The |cFF00FF00Guild|r tab is full of useful functions\n" ..
        "to aid with common tasks not found in WoW's Guild Chat!\n")
    fontLabel:SetTextColor(1, 1, 1, 1) -- White text

    ------------------------------------------------------------------
    -- CALL ANY NAVIGATION SETUP FUNCTION HERE
    ------------------------------------------------------------------
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
                --ShowSoundSettings(optionsFrame)
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
                    GameTooltip:HookScript("OnLeave", function()
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

-- Instantiate and hide initially
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
                PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\unregistered\\mixkit-open-selected-alert7.mp3")
            end
        end)
    end
end
--#endregion Create Options Frame

--#region OnChatMessage called Functions

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

-- GetClassColor(class) returns the hexColor value assined to the class key in CLASS_COLORS table
local function GetClassColor(class)
    return CLASS_COLORS[class] or "FFFFFF" --Default to white if not found
end

--GetRankColor(rank): returns the hexColor value assigned to the rank key in RANK_COLORS table
local function GetRankColor(rank)
    return RANK_COLORS[rank] or "FFFFFF" -- Default to white if rank not listed
end

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
        --these variables are the parameters used in GetGuildRoster
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
    local existingData = TooltipInfoTable[normalizedSender]
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
        -- Add new data
        TooltipInfoTable[normalizedSender] = {
            sender = sender,
            level = level,
            class = class,
            zone = zone,
            rank = rank,
            publicNote = publicN or "no data",
            officerNote = officerN or "no data",
            formattedTooltip = tooltipSpice(sender, level, class, zone, rank, publicN, officerN)
        }
    end

    --setup varible to store the return of chatMessageSpice
    local chatMessage = chatMessageSpice(sender, message, class)
    -- Add chatMessage to ChatMessageTable
    if not tContains(ChatMessageTable, chatMessage) then
        table.insert(ChatMessageTable, chatMessage)
        --Wait .1 seconds for table to be updated then on it goes
        C_Timer.After(0.1, function()
            updateTargetEditBoxText(GuildChatWindow.editBox, ChatMessageTable)
        end)
    end
    --Play a click for each CHAT_MSG_GUILD event
    PlaySoundFile("Interface\\AddOns\\OldGods\\Sounds\\Chatmessage.mp3", "Master")
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
    local AfkMsg = string.format("Hi %s - I'm AFK or busy right now but I'll be back soon! {diamond}", normalizedSender)
    SendChatMessage(AfkMsg, "GUILD")
end

--onTriggerWord called on each CHAT_MSG_GUILD event
local function onTriggerWord(self, event, message, sender)
    -- Check if the player (me) is AFK or in combat
    if not UnitIsAFK("player") and not InCombatLockdown() then
        return --function stops if not afk or in combat
    end

    -- if afk or in combat is true and the message contains a match of the words here pass the sender to sendAutoMsg function
    if string.match(message:lower(), "lazy") or string.match(message:lower(), "lazyeyez") then
        sendAutoMsg(sender)
    end
end

--event frame
local AfkMsg_frame = CreateFrame("Frame")
AfkMsg_frame:RegisterEvent("CHAT_MSG_GUILD")
AfkMsg_frame:SetScript("OnEvent", onTriggerWord)
--#endregion AUTO MESSAGES ends here

--#region REWORK pick out best bits for modern vision of AddOn
local JokeDataWindow
local quoteDataWindow
local helpDataWindow
local GuildDataWindow

-- Function to show the Help window
local function showHelpDataWindow()
    helpDataWindow:Show()
end

-- Function to show the JokeData window
local function showJokeDataWindow()
    JokeDataWindow:Show()
end

-- Function to show the QuoteData window
local function showQuoteDataWindow()
    quoteDataWindow:Show()
end

-- Function to show the GuildData window
local function showGuildDataWindow()
    GuildDataWindow:Show()
end

local function createDataWindow(dataTable, titleText, nextPageWindowFunc)
    -- Create the frame, GUI window that the scrollChild frame fits inside of
    local frame = CreateFrame("Frame", nil, UIParent, "BasicFrameTemplateWithInset")
    frame:SetSize(400, 500)                                 -- Width, Height of main "window"
    frame:SetPoint("CENTER")                                -- Position in the center of the screen, defaults to UIParent the main game window
    frame:SetMovable(true)                                  -- Can "window" be dragged? True means yes it can you silly goose
    frame:EnableMouse(true)                                 -- Can you click things attached to this frame, yep sure can
    frame:RegisterForDrag("LeftButton")                     -- Left button held down on frame to means its drag time
    frame:SetScript("OnDragStart", frame.StartMoving)       -- Get your ass in gear "window"
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing) -- OK "window" take a break
    frame:Hide()                                            -- Start hidden, nobody like you all up in their face

    -- Title position
    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    frame.title:SetPoint("TOP", frame, "TOP", 0, -5)
    frame.title:SetText(titleText)

    -- ScrollFrame
    local scrollFrame = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 10, -50)
    scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -30, 50)

    -- Scrollchild - the frame that will house the line strings of the table that calls createDataWindow
    local scrollChild = CreateFrame("Frame")
    scrollChild:SetWidth(380)               -- Max width of daddy frame -10 for some "window" edges im going -20
    scrollFrame:SetScrollChild(scrollChild) -- Whos your daddy?
    -- Save scrollChild to the frame for later hanky panky
    frame.scrollChild = scrollChild

    -- Populate the "window" with the table lines from dataTable that called createDataWindow
    local yOffset = -5 -- initialize the var used in the lineNumber SetPoint stop commenting on everything, ;)
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
            lineText:SetText(line)                --
        else
            lineText:SetText("Invalid line data") -- Or some default text
        end
        -- Adjust the yOffset for the next line
        local lineHeight = lineText:GetStringHeight()
        yOffset = yOffset - (lineHeight + 10) -- Add blank space between lines
    end

    -- Adjust scrollChild height dynamically based on content
    scrollChild:SetHeight(math.abs(yOffset) + 10)

    -- Close button the X in top right of the window
    local closeButton = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    closeButton:SetPoint("TOPRIGHT", frame, "TOPRIGHT")

    -- "Next Page" Button
    local nextPageButton = CreateFrame("Button", nil, frame, "GameMenuButtonTemplate")
    nextPageButton:SetSize(120, 30)
    nextPageButton:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -10, 10)
    nextPageButton:SetText("Next Page") -- button text here
    nextPageButton:SetNormalFontObject("GameFontNormal")
    nextPageButton:SetHighlightFontObject("GameFontHighlight")

    -- "Help" Button
    local HelpButton = CreateFrame("Button", nil, frame, "GameMenuButtonTemplate")
    HelpButton:SetSize(120, 30)
    HelpButton:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 10, 10)
    HelpButton:SetText("Help") -- button text here
    HelpButton:SetNormalFontObject("GameFontNormal")
    HelpButton:SetHighlightFontObject("GameFontHighlight")
    -- define what happens when the Help button is clicked
    HelpButton:SetScript("OnClick", function()
        frame:Hide()         -- Hide the current "window"
        showHelpDataWindow() -- callfunction that to create new window, can you guess what its called?
    end)

    -- define what happens when the Next Page button is clicked
    nextPageButton:SetScript("OnClick", function()
        frame:Hide()         -- Hide the current "window" and next....
        nextPageWindowFunc() -- callback function = 3rd parameter in function createDataWindow(_, _, 3rd)
    end)

    return frame -- The MAIN GUI "WINDOW" LOGIC IS FINISHED NOW GO AND BE FREE
end

-- global vars calling createDataWindow(dataTable, titleText, nextPageWindowFunc)
JokeDataWindow = createDataWindow(JokeData, "Jokes Index", showQuoteDataWindow)
quoteDataWindow = createDataWindow(QuoteData, "Quotes Index", showGuildDataWindow)
GuildDataWindow = createDataWindow(GuildData, "Guild Index", showJokeDataWindow)
helpDataWindow = createDataWindow(helpData, "Old Gods - Help", function()
    helpDataWindow:Hide()
    JokeDataWindow:Show()
end)

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

local guildMemberData = {}              -- Table to store scanned guild member data
local selectedRole = "All Roles"        -- Default role filter
local eventFrame = CreateFrame("Frame") -- Event frame for handling guild updates
local currentGuildScanWindow            -- Variable to track the currently open guild scan window

-- Function to create a new guild scan window each time
local function createNewGuildScanWindow(data)
    -- Create a new window for the scan results
    local window = CreateFrame("Frame", nil, UIParent, "BasicFrameTemplateWithInset")
    window:SetSize(410, 500)
    window:SetPoint("CENTER", UIParent, "CENTER", 420, 0)
    window:Show() -- Show the window immediately
    window:SetMovable(true)
    window:EnableMouse(true)
    window:RegisterForDrag("LeftButton")
    window:SetScript("OnDragStart", window.StartMoving)
    window:SetScript("OnDragStop", window.StopMovingOrSizing)

    -- Title
    window.title = window:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    window.title:SetPoint("TOP", window, "TOP", 0, -5)
    window.title:SetText("Online Guild Member Info")

    -- ScrollFrame
    local scrollFrame = CreateFrame("ScrollFrame", nil, window, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", window, "TOPLEFT", 10, -50)
    scrollFrame:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -30, 50)

    -- ScrollChild
    local scrollChild = CreateFrame("Frame")
    scrollChild:SetWidth(410) -- Match the scrollable width
    scrollFrame:SetScrollChild(scrollChild)

    local yOffset = -5
    -- Add guild members data
    for _, member in ipairs(data) do
        if selectedRole == "All Roles" or member.roles:find(selectedRole) then
            local gmline = string.format(
                "Level: |cFFFFFFFF%d|r |cFFf5c107(|r|cFFFFFFFF%s|r|cFFf5c107)|r\nName: |cFF00f014%s|r\nRank: |cFF05ffff%s|r\nClass Roles: |cFFFFFFFF%s|r\nPublic Note: |cFFFFFFFF%s|r\n|cFFff0044Offficer Note|r: |cFFf2f7a3%s|r",
                member.level, member.class, member.name, member.rank, member.roles, member.publicNote,
                member.officerNote)

            -- Create a new line for each member
            local line = scrollChild:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            line:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 0, yOffset)
            line:SetWidth(340)
            line:SetWordWrap(true)
            line:SetText(gmline)
            -- Left-align the text
            line:SetJustifyH("LEFT")
            line:SetFont("Fonts\\FRIZQT__.TTF", 16)

            yOffset = yOffset - line:GetStringHeight() - 10
        end
    end

    scrollChild:SetHeight(math.abs(yOffset))
    return window -- Return the created window
end
-- Add a scan button to the GuildDataWindow
local function addScanButtonToGuildDataWindow()
    local scanButton = CreateFrame("Button", nil, GuildDataWindow, "GameMenuButtonTemplate")
    scanButton:SetSize(120, 30)
    scanButton:SetPoint("BOTTOM", GuildDataWindow, "BOTTOM", 0, 10)
    scanButton:SetText("Scan Guild")
    scanButton:SetNormalFontObject("GameFontNormal")
    scanButton:SetHighlightFontObject("GameFontHighlight")

    scanButton:SetScript("OnClick", function()
        if IsInGuild() then
            C_GuildInfo.GuildRoster()
            eventFrame:RegisterEvent("GUILD_ROSTER_UPDATE")
        else
            print("You are not in a guild.")
        end
    end)
end

-- Function to process guild roster data
local function processGuildRoster()
    guildMemberData = {} -- Reset data

    -- Close the currently open window if it exists
    if currentGuildScanWindow then
        currentGuildScanWindow:Hide()
        currentGuildScanWindow = nil -- Clear the reference
    end

    for i = 1, GetNumGuildMembers() do
        local name, rank, rankIndex, level, class, _, publicNote, officerNote, isOnline = GetGuildRosterInfo(i)
        if isOnline then
            local possibleRoles = CLASS_ROLES[class] or { "Unknown" }
            local roleString = table.concat(possibleRoles, ", ") -- Format roles as a string

            -- Filter members based on the selected role
            if selectedRole == "All Roles" or tContains(possibleRoles, selectedRole) then
                table.insert(guildMemberData, {
                    rankIndex = rankIndex,
                    rank = rank,
                    level = level,
                    name = name,
                    class = class,
                    roles = roleString,
                    publicNote = publicNote or "None",
                    officerNote = officerNote or "None"
                })
            end
        end
    end

    -- Sort by rankIndex in descending order
    table.sort(guildMemberData, function(a, b)
        return a.rankIndex < b.rankIndex
    end)

    -- Create the new window and save a reference to it
    currentGuildScanWindow = createNewGuildScanWindow(guildMemberData)
end
-- Create a dropdown for role filtering
local function createRoleFilterDropdown()
    local roleFilter = CreateFrame("Frame", "RoleFilterDropdown", GuildDataWindow, "UIDropDownMenuTemplate")
    roleFilter:SetPoint("TOPLEFT", GuildDataWindow, "TOPLEFT", 10, -30)

    -- Role selection logic
    local function roleFilter_OnClick(self)
        selectedRole = self.value                               -- Update the selected role
        UIDropDownMenu_SetSelectedValue(roleFilter, self.value) -- Update the dropdown display
        processGuildRoster()                                    -- Reprocess guild data with the updated filter
    end

    -- Dropdown initialization
    local function roleFilter_Initialize(self, level)
        local roles = { "Tank", "Healer", "All Roles" } -- Available roles
        for _, role in ipairs(roles) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = role               -- Displayed text
            info.value = role              -- Value to match against `selectedRole`
            info.func = roleFilter_OnClick -- Function to call on click
            UIDropDownMenu_AddButton(info, level)
        end
    end

    -- Initialize the dropdown
    UIDropDownMenu_Initialize(roleFilter, roleFilter_Initialize)
    UIDropDownMenu_SetWidth(roleFilter, 150)
    UIDropDownMenu_SetSelectedValue(roleFilter, selectedRole) -- Set default selection

    return roleFilter
end
-- Event handler for guild updates
local function onEvent(self, event)
    if event == "GUILD_ROSTER_UPDATE" then
        self:UnregisterEvent("GUILD_ROSTER_UPDATE")
        processGuildRoster()
    end
end
-- Attach dropdown and scan button to GuildDataWindow
createRoleFilterDropdown()
addScanButtonToGuildDataWindow()
-- Set up event handling
eventFrame:SetScript("OnEvent", onEvent)
--#endregion Guild Info REWORK ends

--#region Slash Command called functions
local function sendSpecificLineToGuild(lineNumber)
    local line = JokeData[lineNumber]
    if line then
        SendChatMessage(line, "GUILD")
    else
        print("Invalid line number.")
    end
end

-- Function to send specific line number from QuoteData table
local function sendSpecificQuoteLineToGuild(qlineNumber)
    local qline = QuoteData[qlineNumber]
    if qline then
        SendChatMessage(qline, "GUILD")
    else
        print("Invalid line number.")
    end
end

-- Function to send specific line number from GuildData table
local function sendSpecificOGLineToGuild(glineNumber)
    local gline = GuildData[glineNumber]
    if gline then
        SendChatMessage(gline, "GUILD")
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
        SendChatMessage(line, "GUILD")
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
        SendChatMessage(qline, "GUILD")
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
    if JokeDataWindow:IsShown() then
        JokeDataWindow:Hide()
    else
        JokeDataWindow:Show()
    end
end

-- Slash command to toggle the window for the Quotes page
SLASH_QUOTEDATA1 = "/OGQL"
SlashCmdList["QUOTEDATA"] = function()
    if quoteDataWindow:IsShown() then
        quoteDataWindow:Hide()
    else
        quoteDataWindow:Show()
    end
end

-- Slash command to toggle the window for the Help page
SLASH_HELPDATA1 = "/OGHELP"
SlashCmdList["HELPDATA"] = function()
    if helpDataWindow:IsShown() then
        helpDataWindow:Hide()
    else
        helpDataWindow:Show()
    end
end
--#endregion slash commands ends

--#region Sounds: Dependancy LibShredMedia-3.0
local LSM = LibStub("LibSharedMedia-3.0")

if LSM then
    LSM:Register("sound", "CSC_soundpack01", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack01.ogg]])
    LSM:Register("sound", "CSC_soundpack02", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack02.ogg]])
    LSM:Register("sound", "CSC_soundpack03", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack03.ogg]])
    LSM:Register("sound", "CSC_soundpack04", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack04.ogg]])
    LSM:Register("sound", "CSC_soundpack05", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack05.ogg]])
    LSM:Register("sound", "CSC_soundpack06", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack06.ogg]])
    LSM:Register("sound", "CSC_soundpack07", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack07.ogg]])
    LSM:Register("sound", "CSC_soundpack08", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack08.ogg]])
    LSM:Register("sound", "CSC_soundpack09", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack09.ogg]])
    LSM:Register("sound", "CSC_soundpack10", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack10.ogg]])
    LSM:Register("sound", "CSC_soundpack11", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack11.ogg]])
    LSM:Register("sound", "CSC_soundpack12", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack12.ogg]])
    LSM:Register("sound", "CSC_soundpack13", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack13.ogg]])
    LSM:Register("sound", "CSC_soundpack14", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack14.ogg]])
    LSM:Register("sound", "CSC_soundpack15", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack15.ogg]])
    LSM:Register("sound", "CSC_soundpack16", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack16.ogg]])
    LSM:Register("sound", "CSC_soundpack17", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack17.ogg]])
    LSM:Register("sound", "CSC_soundpack18", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack18.ogg]])
    LSM:Register("sound", "CSC_soundpack19", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack19.ogg]])
    LSM:Register("sound", "CSC_soundpack20", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack20.ogg]])
    LSM:Register("sound", "CSC_soundpack41", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack41.ogg]])
    LSM:Register("sound", "CSC_soundpack42", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack42.ogg]])
    LSM:Register("sound", "CSC_soundpack43", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack43.ogg]])
    LSM:Register("sound", "CSC_soundpack44", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack44.ogg]])
    LSM:Register("sound", "CSC_soundpack45", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack45.ogg]])
    LSM:Register("sound", "CSC_soundpack46", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack46.ogg]])
    LSM:Register("sound", "CSC_soundpack47", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack47.ogg]])
    LSM:Register("sound", "CSC_soundpack48", [[Interface\AddOns\OldGods\Sounds\CSC_soundpack48.ogg]])
    LSM:Register("sound", "bad_machine", [[Interface\AddOns\OldGods\Sounds\bad_machine.mp3]])
    LSM:Register("sound", "camera1", [[Interface\AddOns\OldGods\Sounds\camera1.mp3]])
    LSM:Register("sound", "camera2", [[Interface\AddOns\OldGods\Sounds\camera2.mp3]])
    LSM:Register("sound", "dailing_911", [[Interface\AddOns\OldGods\Sounds\dailing_911.mp3]])
    LSM:Register("sound", "echo_beep_alert", [[Interface\AddOns\OldGods\Sounds\echo_beep_alert.mp3]])
    LSM:Register("sound", "error_tones", [[Interface\AddOns\OldGods\Sounds\error_tones.mp3]])
    LSM:Register("sound", "morsecode_SOS", [[Interface\AddOns\OldGods\Sounds\morsecode_SOS.mp3]])
    LSM:Register("sound", "phone_offhook_tones", [[Interface\AddOns\OldGods\Sounds\phone_offhook_tones.mp3]])
    LSM:Register("sound", "quick_bleep", [[Interface\AddOns\OldGods\Sounds\quick_bleep.mp3]])
    LSM:Register("sound", "reactor", [[Interface\AddOns\OldGods\Sounds\reactor.mp3]])
    LSM:Register("sound", "robot_talking", [[Interface\AddOns\OldGods\Sounds\robot_talking.mp3]])
    LSM:Register("sound", "scanner", [[Interface\AddOns\OldGods\Sounds\scanner.mp3]])
    LSM:Register("sound", "soft_chime", [[Interface\AddOns\OldGods\Sounds\soft_chime.mp3]])
    LSM:Register("sound", "sonar_ping", [[Interface\AddOns\OldGods\Sounds\sonar_ping.mp3]])
    LSM:Register("sound", "synth_ring", [[Interface\AddOns\OldGods\Sounds\synth_ring.mp3]])
    LSM:Register("sound", "synth_ring2", [[Interface\AddOns\OldGods\Sounds\synth_ring2.mp3]])
    LSM:Register("sound", "timer_finsished_bell", [[Interface\AddOns\OldGods\Sounds\timer_finsished_bell.mp3]])
end
--#endregion LibSharedMedia

--#region Load Saved Data: Event ADDON_LOADED
local function InitializeTheme()
    -- Ensure the saved table exists
    OldGodsSavedColors = OldGodsSavedColors or {}


    -- Load saved colors into CurrentTheme
    for key, value in pairs(OldGodsSavedColors) do
        local resolvedValue = ResolveNestedKey(Themes["Your Custom Theme"], key)
        if resolvedValue then
            ResolveNestedKey(Themes["Your Custom Theme"], key, value)
        end
    end

    -- Apply the loaded theme
    ApplyTheme(GuildChatWindow, Themes["Your Custom Theme"])
end
--#endregion primary Initialize function ends

--#region Initialize AddOn: Event ADDON_LOADED
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, name)
    if name == "OldGods" then
        InitializeTheme()
        OG_leaveSoundPlayed = false
        OG_clickedSoundPlayed = false

        -- Print addon loaded message in chat frame
        local loadMessage = string.format(
            "|cF9a070FF%s|r has loaded |cFF7AA86Csuccessfully!|r type |cFFFFB700/OGHELP|r for details", name)
        DEFAULT_CHAT_FRAME:AddMessage(loadMessage)

        if OGsavedChat then
            local updatedTitle = UpdateChatHistoryTitle(OGsavedChat)
            updateTargetEditBoxText(SavedChatHistoryWindow.editBox, OGsavedChat)
            SavedChatHistoryWindow.title:SetText(updatedTitle)
            SavedChatHistoryWindow:Hide()
        end
    end
end)
--#endregion ADDON_LOADED ends END OF FILE
