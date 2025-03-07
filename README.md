# GTFSFilter

## About
To filter gtfs files by a polygon. It's written in R and uses the [gtfsTools library](https://ipeagit.github.io/gtfstools/). We use it for OpenTrippPlanner

## Prepare data
1. Copy the GTFS files you want to filter to this project and either name it `de.gtfs.zip` or change the path in `gtfs_filter.R`
2. Copy the polygon as GeoJson to this project or use the already existing. You can download GeoJSON polygons on [this page](http://opendatalab.de/projects/geojson-utilities/). You may want tho change the path in `gtfs_filter.R`. By default it uses wohle BW.

Locally I recommend to use just KVV/Karlsruhe date. Too much data will need to mach memory. Use server for big data.

## How to filter

### How to filter with Docker (recommended)
1. `docker build -t gtfsFilter .`
2. `docker run -v $(pwd):/usr/local/src/myscripts`

[Official Docker Image Doc](https://hub.docker.com/_/r-base/)

### How to filter without Docker (native)
1. Install [R](https://cloud.r-project.org/)
2. Install [sf](https://github.com/r-spatial/sf#linux)
3. `Rscript gtfs_filter.R`
