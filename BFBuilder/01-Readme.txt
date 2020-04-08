##############################################################

Star Wars Battlefront(TM) Mod Tools ReadMe
December 21, 2004

##############################################################

Thank you for downloading the Star Wars Battlefront(TM) Mod Tools. 

----------
Disclaimer
----------
PLEASE READ THE END USER LICENSE AGREEMENT CAREFULLY BEFORE INSTALLING OR OTHERWISE USING THIS SOFTWARE.

USE THE STAR WARS BATTLEFRONT MOD TOOLS *At YOUR OWN RISK*. LUCASARTS DOES NOT AND WILL NOT PROVIDE SUPPORT FOR MOD TOOLS SOFTWARE AND YOU SHOULD NOT CONTACT LUCASARTS' CUSTOMER SUPPORT REGARDING THE STAR WARS BATTLEFRONT MOD TOOLS. SHOULD YOU ATTEMPT TO CONTACT LUCASARTS FOR SUCH SUPPORT, LUCASARTS IS UNDER NO OBLIGATION TO RESPOND TO YOU.

------------
Requirements
------------
Zeroeditor must be run from a machine that has Star Wars Battlefront installed. Zeroeditor has the same hardware and software requirements as Star Wars Battlefront.

Mods require Star Wars Battlefront PC patch 1.11 to run add on levels but support for Mod Ids greater than 4 characters requires patch 1.2

BFBuilder.hta is an html application and runs like an executable. This file must reside in the BFBuilder directory to run. BFBuilder requires Internet Explorer 5.0 or greater to function. 

The default install folder for this toolkit is C:\LucasArts\BFBuilder and changing this path may disrupt the functionality.

Zeroeditor creates an index of everything within the Data<modid> folder for a world when it is launched, for this reason if there are many assets stored in the world folder it will take longer to start up. Assets located in the world folder are processed during the munge process whether they are used in the final LVL files or not so it is a good idea to remove any unused assets before munging for optimal results.

------------
KNOWN ISSUES
------------
Zeroeditor will give an error that Battlefront must be installed if the game has never been run using LaunchBF.exe. To remedy this, run LaunchBF.exe, exit and then run the editor. This is a one time requirement.

Installing the BFBuilder directory in a directory path that contains spaces (such as 'Program Files\') will break the compile process, for this reason no folder in the mod tools path can contain spaces.

The SPtest.exe located in the assets folder is a debug tool that should be placed in the Lucasarts/battlefront/gamedata folder and run instead of the battlefront.exe. It shows debug messages during gameplay and creates a log in the Gamedata folder.  If you have any trouble starting your level try running this and check the files that have warning messages. 

The Particle Editor located in the ToolsFL\Bin folder should be placed in the BFbuilder\Data folder in order to run. 

The BFBuilder.HTA tool will allow the user to edit the Mod1 and Mod2 worlds.  However, because they were built before the .hta they cannot be munged from that application.  To munge them, go to their folders, enter build_pc, and run the munge from there.  All new worlds created in the .HTA can be munged normally. 

##############################################################

© 2004 LucasArts, a division of
Lucasfilm Entertainment Company Ltd.
P.O. Box 10307
San Rafael, CA 94912

##############################################################