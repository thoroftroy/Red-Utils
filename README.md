# Red-Utils
A collection of command line scripts to make life a little easier 

Manual Instal 
----------------
Simply move the scripts you like into /home/<yourusername>/bin

Manual Uninstall
----------------
to uninstall delete desired scripts from /usr/local/bin/ and /home/<yourusername>/bin

```
sudo rm -f /usr/local/bin/rolldice
```
```
sudo rm -f /home/<yourusername>/bin/rolldice
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


