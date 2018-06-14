# shellutil

You may have noticed the `shell_utility_scaffold` in my project list, right?

This project serves to an alike porpouse. Be the template for an installable shell script is a different matter than automatically creating the template. You you need to create an installable shell script, downloading the scaffold and changing the names is the way, but it can get better! I know that are few lines changig, but still is not human-error prone! You can get sundenly stucked by some silly forgotten detail, and you may have a minute or two to solve the issue. But it still is a broke in your concentration that can delay the things.

I know that I also can solve this issue just downloading the code and performing a simple sed script to change everything. But it does not going to be self-contained solution.

I truth, this script simply rebuild the exact same template in the shell_utility_scaffold project, but with your variables already changed.

## Usage

Downloads the project to your local folder.

Enter in the folder. Type the following command:
```
sudo make install
```
Then the script is installed in your system.

Then, everytime you want to create a shell utility commando, just type:
```
shellutil YOURSCRIPTNAME
```
This is an already installable script. You just make changes in the `## Main function`, inside the YOURSCRIPTNAME.sh, in the YOURSCRIPTNAME function. If necessary, add functions to the file.
