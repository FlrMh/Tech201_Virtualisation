# Linux Commands

 - To perform these, please make sure you are within the VM in Git Bash, by typing the command `vagrant ssh`.
 ![](kernandshell.PNG) 

 1. `uname` = system info - OS(kernel)
 ** flag = what we put after a command, to make it more specific
-  `uname -a` (-> -a = flag(short for --all)) = this command outputs all the details about the system, not only the OS name. 
- `uname -s` = same as uname itself
- `uname -r` = release date for os
** we can also combine flags :
- `uname -si` 
- `uname -srp`
![](uname.PNG)

2. Navigation (as we don`t have a GUI, and we are only accessing the shell, we cannot use the mouse, so you only use commands):
- `cd` - change directory 
- `cd ..` - takes you back one level
- `cd ../..` - takes you back two level
- `cd /`- (takes you to the root directory)
- `cd ~` - (takes you to the home directory)
![](gettingout.PNG)
- `ls -l` - 'long format' tells you the permissions for the files within the folder.
** accessing files and folders:
- absolute path:
** from the absolute base of the machine
![](abspaths.PNG)
- relative path:
** from where I am right now
![](absvsrel.PNG)

3. Creating folders:
- `touch` - creating files of any kind - but empty files.
- `nano +filename.filetype` - opens the file with the name you provided, and you can edit the file.  (exiting: `Ctrl +x` + `y` + `Enter`)
- `cat +filename.filetype` - presents the content of the file; concatenates it. 
- `mkdir + name of folder` - make directory

4. Copying files:
- `cp +namefile.filetype nameofnewfile.filetype` - copies the content of a file.
- `cp filename.filetype directory/nameofcopiedfile.filetype` - copies the content of a file into a new file within a specified folder. 
** copying folders:
- `cp -rf my_folder new_folder` - rf = recursive(to the action on the folder and everything inside), force(do it even if the file is locked or is being used) - in the format of : cp -rf "the folder you want to copy"  "the name of the new folder where you want to copy the previously mentioned folder". 
- `rsync -r nameofthefirstfolder nameofthenewfolder` - syncs the folders 

5. Moving files:
- `mv thefileyouwanttomove.filetype thefolderyouwantoputitinto/` - move a file ina folder; the towards back you want to go add `../../../`
- `mv fileyouwanttomove.filetype fileyouwanttomove**rename**.filetype`  - renames a file.

6. Deleting files:
- `rm -rf` - no chek, it will just remove it.
- `rm -rf nameoffile.filetype`
- `rm -rf foldername`
- `rm -rf` - can potentially delete your whole Linux environment.
earching for smthn:
- `grep wordtobefound filenamewhereyouarechecking.filetype`
- `grep wordtobefound *` - prints all the places where you can find that word.
- `grep wordtobefound * -R` - recursive look-up = check everything inside of folders within folders etc. 

7. Wild cards:
- allow us to use characters we use in our files and folders names so we can easily access them.
- `ls file*` - will return me all the files and folders that begin with "file".


** Help instructions:
!!! command --help = will output you details about the command
!! man ls = user manual for Lnux terminal
!! man -k word = prints you all the command containing the (word) keyword.



