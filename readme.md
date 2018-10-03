## EPML_220

Promod remod by kubu, epml features added by gmzorz. 

Please visit the site for more info: 
http://gmzorz.com/epml

### Requirements 
Requires the [CoD4 Mod tools](https://github.com/promod/CoD4-Mod-Tools). Download these and extract in the cod4 directory. Make sure you have a zipping program installed as well, WinRAR preferred.

### Compiling
Clone or Download as zip and extract in ```Call of Duty 4: Modern Warfare/Mods/Your_Mod_Name```, then run [compile.bat](https://github.com/gmzorz/PromodLive220/blob/master/compile.bat). The mod will be compiled into a newly generated folder in the Mods dir which will be opened once compiling is done. A launch.bat file has been added as well so you can run the mod instantly.

### Adding Mods/Source files
For this example i will be explaining how to add the [TAC-45](http://cfgfactory.com/downloads/show/5b290be6b086a) from Black Ops 2.

*Note: Inside the TAC-45 zip is a folder called material_properties, it should be named material-properties. rename it if it's wrong*

Assuming you've downloaded a mod through a site such as [CFGFactory](http://cfgfactory.com/), navigate to the rawfiles (if they're included). You'll (most likely) see a bunch of folders and a mod.csv file. the csv file has to be merged with the mod.csv file located in the epml mod folder, which means you need to open both mod.csv files using notepad and copy over the lines from the downloaded mod to the epml one. 
Once saved, select all folders from your downloaded mod (xmodel, xmodelparts, xmodelsurfs, materials, material-properties, etc..) and copy them over to the epml mod folder.

If you'd like to replace an already existing weapon with the TAC-45, you need to navigate to the weapons/mp directory in order to do so. In there you will find the weapon rawfile, change the name of that file to whatever weapon you wish to replace (weapon rawfiles can be found in ```raw/weapons/mp```.
If you want to add the weapon but not replace an existing weapon, check out [this](http://www.azsry.com/tut/promod_weapon_porting.html) tutorial

We're one step away from compiling, and that is adding the weapon and image files to an .iwd file (infinity ward directory). You can use one of the existing .iwd files located in the mod folder but you may also choose to create a new one. This is done by making a new .zip file using WinRAR and renaming it to .iwd. Once done, you can right click the file and set its properties to open .iwd files always using WinRAR. Then open the file using WinRAR and drag/drop the weapons folder inside. do the same with the images folder.

Once you're done, hit compile and try it out for yourself.

Wall textures, skins or skies are usually shipped in .iwd files, you can simply add them to the epml mod folder.
