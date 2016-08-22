### QUICK START GUIDE

The quick start guide to 2016-WC-Bilby, see confluence for more details.

This repo contains docker images and runs wordpress & mysql in docker containers. It stores the mysql data in mysql data dumps that must be recreated each time you pull from the repo.

First you must start by running `docker-compose up`, this runs the docker-compose.yml file, which starts both containers. You can then navigate to localhost:8080, to see you word press instance!
But it will not be in sync with the database from the repo, to achieve this you must run `sh restore_db.sh`, this will look in the sqlBackup folder and create a mysql database based of the currentDump.sql file.

To push to the repo you must be sure to save your own sql data dump!! Otherwise others will not see your changes. When you are ready to push to the repo run `sh save_db.sh` then run your git commands as usual (git add/commit/push).


Feel free to add accounts etc to the wordpress site. You can login using admin/admin
user:admin
password:admin
