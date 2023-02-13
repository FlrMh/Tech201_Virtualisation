# Linux Commands

 - To perform these, please make sure you are within the VM in Git Bash, by typing the command `vagrant ssh`.
 

 1. ***Getting info about the system:*** 
 
 - `uname` = system info - returns OS(kernel)

 ** flag = what we put after a command, to make it more specific
-  `uname -a` (-> -a = flag(short for --all)) = this command outputs all the details about the system, not only the OS name. 
- `uname -s` = same as uname itself
- `uname -r` = release date for os
** we can also combine flags :
- `uname -si` 
- `uname -srp`

![](images/uname.PNG)

2. ***Navigation (as we don`t have a GUI, and we are only accessing the shell, we cannot use the mouse, so you only use commands):***
![](images/kernandshell.PNG) 
** So, at the moment we are below the GUI, in the Shell, communicating with the Kernel through command line. And we navigate through the Kernel(the place below, generally speaking the OS of the machine) by using commands. 
- `cd` - change directory 
- `cd ..` - takes you back one level
- `cd ../..` - takes you back two level
- `cd /`- (takes you to the root directory)
- `cd ~` - (takes you to the home directory)
![](images/gettingout.PNG)


**Accessing files and folders:**
- Absolute path (from the absolute base of the machine)
![](images/abspaths.PNG)
- Relative path (from where I am right now in my machine)
![](images/absvsrel.PNG)

3. ***Creating folders:***
- `touch` - creating files of any kind - but empty files.
- `nano +filename.filetype` - opens the file with the name you provided, and you can edit the file.  (exiting: `Ctrl +x` + `y` + `Enter`)
- `cat +filename.filetype` - presents the content of the file; concatenates it. 
- `mkdir + name of folder` - make directory

4. ***Copying files:***
- `cp +namefile.filetype nameofnewfile.filetype` - copies the content of a file.
- `cp filename.filetype directory/nameofcopiedfile.filetype` - copies the content of a file into a new file within a specified folder. 
** copying folders:
- `cp -rf my_folder new_folder` - rf = recursive(to the action on the folder and everything inside), force(do it even if the file is locked or is being used) - in the format of : cp -rf "the folder you want to copy"  "the name of the new folder where you want to copy the previously mentioned folder". 
- `rsync -r nameofthefirstfolder nameofthenewfolder` - syncs the folders 

5. ***Moving files:***
- `mv thefileyouwanttomove.filetype thefolderyouwantoputitinto/` - move a file ina folder; the towards back you want to go add `../../../`
- `mv fileyouwanttomove.filetype fileyouwanttomove**rename**.filetype`  - renames a file.

6. ***Deleting files:***
- `rm -rf` - no chek, it will just remove it.
- `rm -rf nameoffile.filetype`
- `rm -rf foldername`
- `rm -rf` - can potentially delete your whole Linux environment.

Searching for a word/value:
- `grep wordtobefound filenamewhereyouarechecking.filetype`
- `grep wordtobefound *` - prints all the places where you can find that word.
- `grep wordtobefound * -R` - recursive look-up = check everything inside of folders within folders etc. 

7. ***Wild cards:***
- allow us to call characters we use in our files and folders names so we can easily access them.
- `ls file*` - will return me all the files and folders that begin with "file".



**Help instructions:**

!!! command --help = will output you details about the command

!! man ls = user manual for Lnux terminal

!! man -k word = prints you all the command containing the (word) keyword.


8. ***Permissions:***
- `ls -l` - showcases the permissions.
**e.g. ne of my files has "drwxrwxr"
- `r` - stands for read - someone has permission to read the file.
- `w` - stands for wite - permission to make changes to the file.
- `x` - stands for execution - they can execute a file. i.e. a .py file, if you have execution permission it means that you can run the program wrote in the file. 
** Having them written multiple times means:
- 1st `rwx` - owner
- 2nd `rwx` - part of the ownership group
- `r` - everyone else/others/all

**Setting permissions:**
- checking the file permission first - `ls -l nameoffile.filetype`
- changing permissions- `sudo chmod u+x(u = user or owner/ g = group / o = others ; + to add/ - to remove permissions, x(or r or w))` = ch(change file) + mod(mod bit=permissions)
- changing permissions for everyone at once - `sudo chmod 777 filename.filetype`
- numbers for changing permissions : 4 = read, 2 = read, 1 = execute. 

![](images/calchmodfinal.PNG)

[Chmod calculator](https://chmod-calculator.com/)

9. ***Process management (similar to task manager on Windows):***
- `top` = real time statistics, and also locks you out of the terminal (not recommended, as it actually locks you out of terminal and it can actually create difficulty when attempting to get back in the terminal within the VM).
- use `Ctrl + C` to get out.
- the better way of checking what is working, use `ps` = shows current processes used in the terminal .
- `ps aux` = print out of all the systems running in  the background. 

**Killing processes:**
- create a random process `sleep 120(time you want it to run for) &(& - makes it run in the background)` - will return a number; e.g in my case[1]1955.
- to kill `sleep` use `kill -9 and the PID(in this case 1955).
- after you kill something with `kill -9`, if you type `ps` it will show `sleep` as Killed. 
- `Ctrl + Z` - stops a program
- `fg` - foreground( brings it back to the foreground from the background)

10. Tree:
- showcases all the folders in our device (more visual way of seeing files and folders.)
- must be installed, so run:
1.  `sudo apt-get update`
2.  `sudo apt install tree -y`
- now trype `tree` and you should see the files in your VM as follows:

![](images/tree.PNG)

** "config.vm.box_download_insecure = true" to add in case of unrecognised vm.


## Running tools and programs testing; Updating and/or installing tools and programs:

**Testing tools library**
- `gem install bundler` - ruby testing bundle
- `bundle`
- `rake bundle` - runs all the tests to check if everything works as it should
- `app` - package with all the tools and programs.
** It will show loads of things that are not installed.
- Let`s install them through git bash:
- `sudo apt-get update -y` - update every tool and program
- `sudo apt-get upgrade -y` - careful when you use it, cause it upgrades everything, makes changes to the tools. 

**Installing tools and packages:**
1.  Installing nginx:
- `sudo apt-get install nginx -y`
- `sudo systemctl enable/* nginx`

!! If we need a specific version of a tool/ program/ package:

- ALWAYS DO YOUR OWN RESEARCH.


2. Installing nodejs:
- `sudo apt-get install python-software-properties`
- `curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`
- `sudo apt-get install nodejs -y`
- check the version by typing `nodejs -v`


3. Installing pm2
- we needed nodejs to install the pm2 package. So now that we have nodejs, we should run:
- `sudo npm install pm2 -g`


#### ***Now our tool and packages library is updated and everything that is needed is installed. :)*** 


**Launching our app:**
- Move into the `app` folder and then run `npm install` then `node app.js`
- Go on your web browser, `copy + paste` the I.P. address you set for the app in the Vagrant file, and add the protocol indicated by terminal at the end of the I.P. address in the following format:
`http://192.168.10.100:3000/`.


## Some of the most used commands in `bash`:

1. `ls`: Lists the contents of a directory.
2. `cd`: Changes the current working directory.
3. `pwd`: Prints the current working directory.
4. `echo`: Prints text to the terminal.
5. `cat`: Concatenates and displays the contents of files.
6. `cp`: Copies files and directories.
7. `mv`: Moves or renames files and directories.
8. `rm`: Deletes files and directories.
9. `mkdir`: Creates a new directory.
10. `rmdir`: Deletes an empty directory.
11. `touch`: Creates a new, empty file.
12. `find`: Searches for files and directories.
13. `rep`: Searches for text patterns in files.
14. `sort`: Sorts the contents of a file.
15. `uniq`: Filters out repeating lines in a file.
16. `history`: Shows a list of previously executed commands.
17. `man`: Displays the manual pages for a command.
18. `top`: Displays information about the system's running processes.
19. `kill`: Terminates a process by its PID.
20. `ps`: Displays information about the current processes.
21. `nano`: Text editor for configuration files or scripts.
22. `source`: Runs a script or source file in the current shell environment.
23. `export`: Used to set environment variables in the current shell session.
24. `chmod`: Used to change the permissions of files and directories.






