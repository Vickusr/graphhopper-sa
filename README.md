# graphhopper-sa
Repo for setting up graphhopper

In this repo the following is used reference:

`https://github.com/graphhopper/graphhopper`

On a linux machine run

`wget https://github.com/graphhopper/graphhopper/releases/download/5.1/graphhopper-web-5.1.jar https://raw.githubusercontent.com/graphhopper/graphhopper/5.x/config-example.yml`

The commands above gets all the needed files to run and configure the graphhopper server


Now we need some sort of map data

`wget http://download.geofabrik.de/europe/germany/berlin-latest.osm.pbf`

The website is here:
https://download.geofabrik.de/

For my purposes I want South Africa[https://download.geofabrik.de/africa/south-africa.html]:

`wget https://download.geofabrik.de/africa/south-africa-latest.osm.pbf`

Once the download is complete we can run the following command to start, note this can take some time:

`java -Ddw.graphhopper.datareader.file=berlin-latest.osm.pbf -jar *.jar server config-example.yml`
