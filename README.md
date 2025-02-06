OldGods - World of Warcraft Addon

A powerful and stylish guild management addon designed for efficiency and customization.
About OldGods

OldGods is a World of Warcraft addon designed to enhance guild management, player communication, and mail filtering with a unique touch. Built from the ground up without external libraries like Ace3, it offers a raw yet refined approach, showcasing the full potential of the WoW API.

This project is driven by custom solutions that prioritize functionality, user experience, and efficiency—all while keeping performance smooth in large guild environments.
Key Features

🔹 Guild Chat Enhancements

    Replaces standard /guild chat with a custom chat window for improved visibility and usability.
    The Chat Window comes with some pre-made Themes to select from and loads with "Your Custom Theme" by default.
    The Custom Theme has options to choose colors via selectors - and your Theme is persistent, saving selected colors
    as they are picked. There is a 6 fonts to choose from, plans to include more with options like size and outline etc.
    These fonts are set at 20px which makes guild chat easy to read for us older gamers ;)
    
    The chat appears in an Edit Box frame, put simply you can copy paste from this chat window
    an advantage over in the in game chat, and one of the inspirations for creating this add on.
    the edit box approach is helpful for copying names/links/info etc... from the chat directly!
    
    Chat can be saved and cleared to free up some memory, Chat History is where all saved chats
    appear, and can be accessed by typing /ogch or pressing the Save & Clear button, adding the chat to a saved variable.
    Saved chats are persistent, meaning available and accessable to all toons all guilds.
    Plan on adding a KB limit to alert user when it's a good time Save & Clear. 

🔹 Guild Management Tools

    Macro integration for easy rank and time based pruning for Officers and above.
    
    Member Search, look up players quickly find rank and status, online green, offline red
    The Member Search also includes a handy function that will find Unicode chars. with normal input
    ie. Search: Oldman  Result: Öldman-Lightbringer  Initiate  Offline(1d 23hr)
    
    Plans for timed data collection to intelligently update guild information. Additional Officer+ abilities for ranking and other secure functions.

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
    
    Limitations, select all returns all mail that contain a sblacklist attachment, Im not sure
    whats possible but have plancs to itterate the attachments and keep items that are not listed.
    
    Due to Blizzards very understandable limitations to automation of such things that can be 
    abused returning items/sending mail, can only by performed by UI interaction. As an example
    if you have 100 skinning knives grieved to you, you will have to click "Return Selected" 100 times, 
    think if it as training for cookie clicker, 100 clicks a second, you can do it!!
    
    Future UI enhancements to match the selected Theme aesthetic, and positioning info.
    Plans to make this a stand-alone AddOn, fast relief from mail grief.
    Known Issues: Will add anything typed in the input box to the db, removing items added to an existing list takes a reload for some reason,

Installation

    Download the latest release from https://github.com/Darthterac/OldGods/archive/refs/heads/master.zip
    Extract the OldGods-master folder to:

    World of Warcraft/_retail_/Interface/AddOns/

    Navigate to the folder now in:                  World of Warcraft/_retail_/Interface/AddOns/OldGods-master
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
