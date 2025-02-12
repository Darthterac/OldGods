OldGods - World of Warcraft Addon

A powerful and stylish guild management addon designed for efficiency and customization.

About OldGods AddOn:

OldGods is a World of Warcraft addon designed to enhance guild management, player communication, and mail filtering, with a unique touch. Built from the ground up, without external libraries like Ace3, it offers a raw, yet refined approach, showcasing the full potential of the WoW API.

This project is driven by custom solutions that prioritize functionality, user experience, and efficiency — all while keeping performance smooth in large guild environments.

Key Features:

🔹 Guild Chat Enhancements

    This AddOn replaces standard /guild chat with a custom chat window for improved visibility and usability.
    The Chat Window comes with some pre-made themes to select from and it loads with "Your Custom Theme".
    The Custom Theme has options to choose colors via selectors; your Theme is persistent, 
    saving selected colors as they are picked. 
    
    There are currently 6 fonts to choose from. The fonts are set at 20px which makes guild chat easy to 
    read for us older gamers ;)
    
    Chat window can be resized to 800*600 and a handy ToggleButton can be dragged and positioned,
    which hides or shows the guild chat window when clicked.
    
    The chat appears in an Edit Box frame.  Put simply, you can copy/paste from this chat window,
    which is an advantage over in the in game chat and one of the inspirations for creating this addon.
    The edit box approach is helpful for copying names/links/info etc. from the chat directly!
    
    Chat can be saved and cleared to free up some memory, Chat History is where all saved chats
    appear, and can be accessed by typing /ogch or pressing the Save & Clear button. 
    Saved chats are persistent, meaning available and accessable to all your toons in any guild.

    Sound notification on new guild chat messages:  A small pop alert signals a new message in
    guild chat, as of now its perma-on until I do more work on the sounds options, it's a nice
    "click", and depending on the guild, it might not be too bad, although I do want to add otpions to
    the sounds used by the addon so users can toggle them on or off at minimum.
    
    Easter Eggs and Clicking linked items:  Right now the logic used to click items linked in 
    chat are set to be expanded with the the right mouse button, while the left mouse button is hooked
    for clicking on player names in the Chat window.  This will display a custom tool tip with
    information on the player, Name, Class, Rank, Zone, Public Note, and Officer Note if ranked
    permits. Xalatath will ask you "Did you feel it cease to exist?" when clicking a player name,
    and a large percent of the game's tooltips will be skinned with a custom border and background,
    uniquely styled to reflect the Old Gods guild theme, /reload will reset to normal.
    
    Plan to add a KB limit to alert user when it's a good time Save & Clear.
    Plan to make chat text color customizable and more enhancements to custom theme options.
    Plan to update General settings with persistent options, such as toggling easter egg.
    Plan to include more fonts with options for size/color.

🔹 Guild Management Tools

    Macro integration for rank and time-based management for Officers and above.
    As of now, rank is hardcoded as Initiate.  The default threshold for the purge
    is set to 14 days, because of automation limitations when inactive initiates are
    found at 14 days.  The macro is created/edited to add the first player from the list
    to be purged by pressing f5, a second f5 refreshes the table, adding the next player in,
    and so on.
    
    Member Search:  Look up players quickly, find rank and status, online is green, offline is red.
    The search also performs dynamic look-up while typing and will display matches as the user types in
    the search input. UTF-8 characters? no problem, dynamicly finds players returned in the roster with 
    UTF-8 letters with plain ascii input as the search, search is case-insensitive:
    
    [      search: alex                                     ]
    [      Áléx-Lightbringer     Coolrank   Online          ] 
    
    Search results are sorted then displayed; Online appear first sorted alphabetically; followed by 
    Offline, sorted by least time offline. Selecting "Member Search" in the "Guild" content from of the
    "Options" main menu will populate the search with the full roster, the roster is cached so for now to
    get the latest roster update, close and reopen the "Member Search" window to refresh. All the player 
    names returned in the list are hyperlinks, you can interact with the names by clicking on them such as
    invite/whisper the option to copy the name is blocked and I am working on solving that and additional
    options.
    
    Example: partial search/dynamic matching (will match server names)
    
    [    Search: roc                                        ]
    [*   RockStàr-Lightbringer   Officer   Online           ]
    [-   Zzzzzzz-BlackRock       GM        Offline (0d 0hr) ]
    [    RocksLock-Lightbringer  Initiate  Offline (1d 23hr)]
    [    Bobbyrocker-Illadin     Member    Offline (7d 4hr} ]
    
    Plans for timed data collection to intelligently update guild information. 
    Plans for additional Guild Managment features, such as ranking members from search 
    search results and other useful utilities to really make this shine.
    Plans for making the purge macro key binding a user choice plus enhance the logic and clean up the debug output.

🔹 OldGods Mail Manager

    A robust system to create a blacklist of unwanted items to return to the sender
    to help combat mail grief. Stories of 1000 BlackSmith hammers cramming your inbox full, with 
    no help on how to stop things like this from happening are becoming common occurances.
    A guildie I wont call out by name (but his name is Kas :p), suggested spamming mail boxes with various 
    items for a fun time.  Kas was an inspiration behind this addition to the OldGods AddOn.  Any item you 
    add to your unwanted list can easily be returned to the sender.
    
    "Shift + Click" support for quick item addition to the blacklist, saves so it's
    available to all toons once created, making it simple to handle across multiple alts.
    Just set the focus where prompted for Item ID, click the input box at the bottom left of 
    the mail management window that appears when you open any mail.  Shift click an item, then click Add 
    (or if you know the ItemID, enter by hand).  It takes an Item ID only to avoid adding items by mistake. 
    The item ID is used to pull the item name and texture, which are what appear in the blacklist, making 
    confirmation of the correct item clear.
    
    This is formatted by a styled, scrollable list with item textures, accompanied by the item name, 
    and an easy "remove item" button alongside each blacklist entry. Users can build a list of items 
    and check the "select all" box, and any mail containing those items will be staged for return to 
    sender. 
    
    Due to Blizzard's understandable limitations to automation of such things that can be 
    abused, like returning items/sending mail, can only by performed by a UI interaction. As an example,
    if you have 100 skinning knives grieved to you, you will have to click "Return Selected" 100 times, 
    think of it as training for "cookie clicker", 100 clicks a second, and you can do it!!
    
    Plan for UI enhancements to match the selected theme aesthetic and positioning info.
    Plan to make this a stand-alone AddOn, as it providea fast relief from mail grief.
    Plan to itterate the attachments per mail and keep items that are not listed.
    
    Known Issues: 
    Will add anything typed in the input box to the blacklist.
    Removing items added to an existing blacklist takes a reload for some reason.
    Limitations:  "Select all" will return every piece of mail that contains a blacklist attachment, 
    regardless of what else is attatched. 
    
Installation

    Download the latest release from:
    
    https://github.com/Darthterac/OldGods/archive/refs/heads/master.zip
    
    Extract the OldGods-master folder to:

    World of Warcraft/_retail_/Interface/AddOns/

    Navigate to the folder now in:           
    
    World of Warcraft/_retail_/Interface/AddOns/OldGods-master
    
    Rename folder to OldGods removing the -master:  
    
    World of Warcraft/_retail_/Interface/AddOns/OldGods
   
    Restart WoW and enable the addon in the AddOns menu.

Planned Features & Roadmap

    Guild roster enhancements, including search and advanced rank-based actions.
    Customization options for colors, sounds, and notifications.
    More refined event-based updates to optimize data handling.
    Further UI refinements to match the OldGods theme.

Credits & Acknowledgments

Created by Doug (Lazyeyez-Lightbringer aka Darthterac) - a self-taught coder bringing madness to order 😆🔥

Mentorship & AI Collaboration by ChatGPT (guiding the eldritch code whispers)

Alpha Tester & Editing Services provided by Lux (Luxora-Lightbringer)

***OldGods is an independent project with no external dependencies, built on passion, curiosity, and a deep love for coding***

If you enjoy the addon or have suggestions, feel free to contribute or provide feedback!
