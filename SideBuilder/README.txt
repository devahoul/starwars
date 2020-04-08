This is a stand-alone builder tool for munging custom sides in SWBF1, specifically the 4 main playable  factions: Empire (IMP), Rebels (ALL), Droids (CIS), and Clones (REP).

The design for this builder was inspired by Battlebelk's IMP side builder, it includes the side source  assets from BFbuilder modding tools along with modified batch files to support 32bit and 64bit munging. The  empire has 1.2 settings for the both jet units' jetpack charge and the darktrooper's lowered shotgun  spread.

Credits:
- Phobos Developer
- BattleBelk
- LucasArts and/or Pandemic

Tips:
To modify ODF files, go into one of the side folders such as IMP\Sides\IMP\ODF folder and open the ODF or .Option file with notepad. Certain changes are online compatible. Most are not. For more details look up ODF modding tutorials. ODF changes to the host's side file will override most ODF settings for clients. There are some settings which  are client based, such as loading a custom mesh (i.e. trandoshan for pilot), or modifying interface variables such as the crosshair (although this may require additional modification in the common.lvl). 

TGA files can be edited with photoshop/gimp/paint.net (make sure they are saved with RLE compression off).  All skins are client based. This applies to maps as well as sides and common. There is a mesh viewer  available for download which lets you preview changes without having to munge first.

After changes are done, run the munge batch. The LVL for your side will be in _LVL_PC. Copy it into your  LucasArts\Star Wars Battlefront\GameData\Data\_LVL_PC\SIDE folder, but first rename your original file to  something like impSTOCK.lvl