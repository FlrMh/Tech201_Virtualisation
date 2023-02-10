1. Have a Vagrant file that has config to create a database and an app VMs. See `Vagrantfile` for details.

2. Command `vagrant up` in bash terminal in VSC.

!! If we want to destroy just one Vm, we can do that by specifying the name of the VM

e.g. in our case `vagrant destroy app` / `vagrant destroy database`.

`vagrant status` = shows what is going on with Vagrant, if there are any machines created, if they are running, etc. 

3. `vagrant ssh app`(app) and `vagrant ssh in database`(environment) to get inside both machines.

4. We want to install and set up our database on the database VM. We need a key in order to create a database. (mongo.db documentation)
 5. `list` = checks if our VM has the right stuff to run mongo(software).
 6. `sudo apt-get updates -y` 
 7. `sudo apt-get upgrade -y` -  do not do it on a production env, if it is a live app, because `upgrade` can cause issues and can give the app downtime. 
 8. Need a command to install a version of mongo that the devs want us to.
 9. `sudo systemctl start mongod` - to start up the database.  this will not return anything. 
 10. `enable mongod`  - should output "created symlink..." = that means that the database it s up and running.
 11. `sudo nano /etc/mongod.conf` - configuration file.
 12. In the config file, we need to go to net(network interfaces). Mongo has his own port number, and we need to change the bindIP: this means the range of I.P. addresses can access the database.
 13. Best practice for production env = you should put only one specific I.P. address. Because we want to make it ccessible to everyone, we need to change it to 0.0.0.0.
 14. Restart mongo `sudo systemctl restart mongod` to implement the changes made, and then re-enable it `sudo systemctl enable mongod`.
 15. Check the status by `vagrant status`.

 16. Moving over to our app. 
 17. `cd app/` to be in the right place.
 18. Now, in order to connect the database, we need to make an ***environment variable**.

 !! Env Variable = smthn that allows us to set a variable that we can use to specify the info of our particular environment. We need it to connect the app to the database.

 19. Create a normal variable = `MY_VAR=hello` (do no need to be uppercase, bu it is best practice). To see the contents of a variable we use `echo $MY_Var`.

 !! This variable only exists in the process that I am running. It is not accessible outside of it. It is a standard variable not environment wide.

 !! An environment variable can be accessed and viewed wherever you are in the environment. Persistent(stay there even if the env closes) throughout the environment.

 20. `printenv` = prints all the env variables.
 21. Create an env variable = `export MY_VAR=helloagain` - MUST USE `export`.
22. `cd ..` and then access the hidden file `sudo nano .bashrc` where you introduce your Env Variable.
23. `source` = run a file.
24. `source .bashrc` - runs the file and implement the changes.
25. Now, if we do `printenv` we should be able to see our newly introduced env variable.

26. So, we need a variable sitting on the app vm that tells us how to connect to mongo.db. 
27. Create an env variable `export DB_HOST=mongodb://192.168.10.150:27017/posts` (create the env variable + the process we want it to connect to + where we want it to connect to the process=i.p. address of database + port number + what we want to connect to in the database).
28. `printenv DB_HOST` - prints the place where to get the data from when the app needs to connect to a database.

29. `cd app/` 
30. `npm install` - as usual, this will install our actual app.
31. `node seeds/seed.js` - running a non-js file made by devs that set up the database
In order to be able to run this command, we must be sure we set up a connection between the app and database.
32. Should return "Database Cleared  Database Seeded" - Database has been populated. The population has not been happening on the app, but on the database.



