# graphhopper-sa
Repo for setting up graphhopper

In this repo the following is used reference:

`https://github.com/graphhopper/graphhopper`


## Step 1 - get the necessary server and config files
On a linux machine run

`wget https://github.com/graphhopper/graphhopper/releases/download/5.1/graphhopper-web-5.1.jar https://raw.githubusercontent.com/graphhopper/graphhopper/5.x/config-example.yml`

The commands above gets all the needed files to run and configure the graphhopper server

## Step 2 - get the map data
Now we need some sort of map data

`wget http://download.geofabrik.de/europe/germany/berlin-latest.osm.pbf`

The website is [here](https://download.geofabrik.de/)

For my purposes I want [South Africa](https://download.geofabrik.de/africa/south-africa.html)

`wget https://download.geofabrik.de/africa/south-africa-latest.osm.pbf`

Once the download is complete we can run the following command to start, note this can take some time:

## Step 3 - start the server

`java -Ddw.graphhopper.datareader.file=berlin-latest.osm.pbf -jar *.jar server config-example.yml`


## Docker

In the repo there is a docker file that can build an image that can be run.
Note the map data needs to be there and also should be changed in the `gh.sh` file

Image can be downloaded [here](https://hub.docker.com/r/vickusdocker/graphhopper-sa) it's huge since it has the data for south africa in there 
