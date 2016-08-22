### QUICK START GUIDE

The quick to the wordpress & docker set up.

Clone the repo then run `docker-compose up`, this runs the docker-compose.yml file, which starts both containers. Your wordpress instance will now be running on localhost:8080.

The git workflow involves running `sh save_db.sh` before each time you commit and push to the repository. This essentially creates a executable version of the sql server, that can be recreated on any other machine.
After pulling from the repository run `sh restore_db.sh` this will recreate the database, from the sqlBackup folder.

Have fun :)
