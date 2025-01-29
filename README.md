# Red-Utils
A collection of command line scripts to make life a little easier 

Manual Instal 
----------------
Simply move the scripts you like into /usr/local/bin/ or /home/USRNAME/bin 

Manual Uninstall
----------------
to uninstall delete desired scripts from /usr/local/bin/ and /home/USRNAME/bin

Example from cli:

```
sudo rm -f /usr/local/bin/rolldice
```
```
sudo rm -f /home/<yourusername>/bin/rolldice
```

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
