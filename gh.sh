#!/bin/bash
exec java -Ddw.graphhopper.datareader.file=south-africa-latest.osm.pbf -jar *.jar server config-example.yml 
