OldGods - World of Warcraft Addon

A powerful and stylish guild management addon designed for efficiency and customization.
About OldGods

OldGods is a World of Warcraft addon designed to enhance guild management, player communication, and mail filtering with a unique touch. Built from the ground up without external libraries like Ace3, it offers a raw yet refined approach, showcasing the full potential of the WoW API.

This project is driven by custom solutions that prioritize functionality, user experience, and efficiency—all while keeping performance smooth in large guild environments.
Key Features

🔹 Guild Chat Enhancements

    Replaces standard /guild chat with a custom chat window for improved visibility and usability.
    The Chat Window comes with some pre-made Themes to select from and loads with "Your Custom Theme".
    The Custom Theme has options to choose colors via selectors; your Theme is persistent, 
    saving selected colors as they are picked. 
    
    There are currently 6 fonts to choose from, plans to include more with options for size/color.
    The fonts are set at 20px which makes guild chat easy to read for us older gamers ;)
    
    Chat window can be resized to 800*600  and a handy  ToggleButton can be dragged and positioned
    which hides or shows the guild chat window when clicked!
    
    The chat appears in an Edit Box frame, put simply you can copy paste from this chat window
    an advantage over in the in game chat, and one of the inspirations for creating this addon.
    The edit box approach is helpful for copying names/links/info etc... from the chat directly!
    
    Chat can be saved and cleared to free up some memory, Chat History is where all saved chats
    appear, and can be accessed by typing /ogch or pressing the Save & Clear button. 
    Saved chats are persistent, meaning available and accessable to all your toons in any guild.

    Sound notification on new guild chat message, a small pop alert signals a new message in
    guild chat, as of now its perma on untill I do more work on the sounds options, its a nice
    click, and depending on the guild might not be to bad, although I do want to add otpions to
    the sounds used by the addon so users can toggle them on or off at minimum.
    
    Easter Eggs and  Clicking linked items, right now the logic used to clcik items linked in 
    chat are set to be expanded with the the right mouse button, the left mouse button is hooked
    for clicking on player nameds in the Chat window, which will display a custom tool tip with
    information on the player, Name, Class, Rank, Zone, Public Note, and Officer Note if ranked
    permits. Xalatath will ask you "Did you feel it cease to exist?" when clicking a player name
    and a large percent of the games tooltips will be skinned with a custom border and background
    uniquely styled to reflect the Old Gods guild theme, /reload will reset to normal.
    
    Plan on adding a KB limit to alert user when it's a good time Save & Clear.
    Plan to make chat text color customizable and some enhancements to custom theme options.
    Plan to update General settings with persistant options such as toggling easter egg.

🔹 Guild Management Tools

    Macro integration for easy rank and time based pruning for Officers and above.
    As of now rank is hardcoded as Initiate and the default threshold for the purge
    is set to 14 days, because of automation limitations when inactive initiates are
    found at 14 days the macro is created/edited to add the first player from the list
    to be purged by pressing f5, f5 again refreshes the table adding the next player in
    and so on.
    
    Member Search, look up players quickly find rank and status, online green, offline red
    The Member Search also includes a handy function that will find Unicode chars. with normal input
    ie. Search: Oldman  Result: Öldman-Lightbringer  Initiate  Offline(1d 23hr)
    
    Plans for timed data collection to intelligently update guild information. 
    Plans for additional Officer+ rank features like ranking members from search, 
    and other functions which rely on the use of a keybound macro to bypass "secure" restrictions.
    Plans for making the purge macro binding a user choice and enhance the logic.

🔹 OldGods Mail Manager

    A robust system to create a blacklist of unwanted items to return to the sender.
    To help combat mail grief. Stories of 1000 BlackSmith hammers in the mail with 
    no help on how to stop things like this from happening and a guildie I wont Call
    out by name but his name is Kas :p often mentioning spamming mail boxes with various 
    items was the inspiration behind this addition to the OldGods AddOn. So any item you 
    add to your unwanted list can easily be returned to the sender.
    
    Shift+Click support for quick item addition to the blacklist database, saved so
    available to all toons once created, making it simple to handle multiple alts.
    Just set focus where prompted for Item ID, click the input box bottom left of UI,
    and shift click an item then click Add, or if you know the ItemID enter by hand.
    It takes Item ID only to avoid adding items by mistake. The item ID is used to pull
    the item name and texture which are what appear in the black list making confirmation
    easy.
    
    Styled scrollable list with item textures accompanied by item name and an easy remove 
    item from database button along side each entry. Build a list of items and check the select all box, 
    any mail containing any of those items will be staged for return to sender.
    
    Limitations, select all returns all mail that contain a blacklist attachment, Im not sure
    whats possible but have plans to itterate the attachments per mail and keep items that are not listed.
    
    Due to Blizzards very understandable limitations to automation of such things that can be 
    abused returning items/sending mail, can only by performed by UI interaction. As an example
    if you have 100 skinning knives grieved to you, you will have to click "Return Selected" 100 times, 
    think if it as training for cookie clicker, 100 clicks a second, you can do it!!
    
    Future UI enhancements to match the selected Theme aesthetic, and positioning info.
    Plans to make this a stand-alone AddOn, fast relief from mail grief.
    
    Known Issues: Will add anything typed in the input box to the db, 
    removing items added to an existing list takes a reload for some reason,

Installation

    Download the latest release from https://github.com/Darthterac/OldGods/archive/refs/heads/master.zip
    Extract the OldGods-master folder to:

    World of Warcraft/_retail_/Interface/AddOns/

    Navigate to the folder now in:           World of Warcraft/_retail_/Interface/AddOns/OldGods-master
    Rename folder to OldGods removing the -master:  World of Warcraft/_retail_/Interface/AddOns/OldGods
   
    Restart WoW and enable the addon in the AddOns menu.

Planned Features & Roadmap

    Guild roster enhancements, including search and advanced rank-based actions.
    Customization options for colors, sounds, and notifications.
    More refined event-based updates to optimize data handling.
    Further UI refinements to match the OldGods theme.

Credits & Acknowledgments

Created by Doug(Lazyeyez-Lightbringer aka Darthterac) - (a self-taught coder bringing madness to order 😆🔥)
Mentorship & AI Collaboration by ChatGPT (guiding the eldritch code whispers).

OldGods is an independent project with no external dependencies, built on passion, curiosity, and a deep love for coding.

If you enjoy the addon or have suggestions, feel free to contribute or provide feedback!
