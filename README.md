# Defli Scripts
This is a repository for handy scripts for Defli

## MongoDB Collector Service (adsb_collector) and program - Removal script
Use this script to remove the MongoDB collector service and program installed from a Defli Ground station.

It will:
  
  Stop and disable the adsb_collector service
  
  Remove the adsb_collector service file
  
  Delete the adsb-data-collector-mongodb directory

Assumptions:
  
  It is assumed that the MongoDB Collector Service (adsb_collector) was installed using the Defli instructions or the Dealcracker install script (https://github.com/dealcracker/DefliMongoDB).
  If not the names/locations may be different and the script will not succeed.

If you wish to re-install, just run the Dealcracker install script (https://github.com/dealcracker/DefliMongoDB)

Hat tip to Dealcracker for his earlier work on the install script that this is based on.

### Usage
```
sudo bash -c "$(wget -O - https://raw.githubusercontent.com/Bigmaxi01/Defli/master/remove_mongo_collector.sh)"
