# Red-Utils
A collection of command line scripts to make life a little easier (this is designed for linux and will only work on linux. I have also only tested it on fedora linux so there may be some compatability errors between versions)

Install
----------------
To manually install simply move the scripts you like into /usr/local/bin/ or /home/USRNAME/bin 

Or to automatically install run the following commands
```
git clone https://github.com/thoroftroy/Red-Utils.git
```
```
cd Red-Utils
```
```
chmod +x install-scripts.sh
```
```
sudo ./install-scripts.sh
```

Uninstall
----------------
run the following command while in the Red-Utils directory
```
chmod +x uninstall-scripts.sh
```
```
sudo ./uninstall-scripts.sh
```
If all else fails manually uninstall by deleting desired scripts from /usr/local/bin/ and /home/USRNAME/bin

# Merge
A command that merges all files in the directories and their sub directories into one
It copies the files to ensure nothing is lost

Usage
-----------------
```
Usage: merge [dir]

Options:
  [dir]   leave blank to use in current directory or specify a directory here

Examples:
  merge    # merges the contents of every sub-directory in the current directory
  merge ~/Downloads  # merges the contents of every sub-directory in the Downloads directory
```

# Pick
A utility that randomly selects a file or folder within the current directory

Usage
-----------------
```
Usage: pick [dir]

Options:
  [dir]   leave blank to use in current directory or specify a directory here

Examples:
  pick    # Picks a random file in the current directory
  pick ~/Downloads  # Picks a random file in the Downloads directory
```

# Rolldice
A simple command line utility for rolling a dice

Usage
-----------------
```
Usage: rolldice [option] <expression>

Options:
  <expression>   Roll dice with specified dice notation (e.g., 3d6,2d10,5)
  flip [count]   Flip a coin the specified number of times and display results.
  help, -h       Show this help message and exit.

Examples:
  rolldice 3d6,2d10,5    # Rolls dice
  rolldice flip 3        # Flips a coin 3 times
```

# CleanF
A script which deletes any files with specific extentions, this is for people coping a bunch of files from an Akaso Ek7000 (or other) camera/gopro. The files after recording will have an mp4 as well as two other files which aren't really needed so this deletes all of those. 

Usage
-----------------
```
Usage: cleanF [dir]

Options:
  dir   Specifies the directory to clean, if left blank will clean the current directory

Examples:
  cleanF    # Cleans all files in current directory
  cleanF ~/Movies        # Cleans all files in the Movies directory
```

# wifiPassword
Shows the current wifi password and some other information. This file is just one line and you could achive the same effect with a simple alias command but here we are. This will NOT show wifi passwords for networks you are not currently connected to. 

Usage
-----------------
```
Usage: wifiPassword

Examples:
  wifiPassword    # Displays the password of the currently connected wifi. 
```

# Mrename or Mass Rename
This is specifically designed for episodes and similar things, most file editors have the function built in nowadays so this is redundent. The file is here for archival purposes.
It will rename everything in the current directory to the specified name followed by a number. It does so sequentially. 

Usage
-----------------
```
Usage: mrename "NEW NAME"

Examples:
  mrename "Chicken"  # This will name everything "Chicken 1" , "Chicken 2" and so on. 
```
