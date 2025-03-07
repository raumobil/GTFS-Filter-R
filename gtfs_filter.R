# Script to filter gtfs file by polygon

rlog::log_info("Starting Script")

library(rlog)
library(gtfstools)
library(geojsonsf)
library(brio)

sourceGtfsPath <- file.path("de.gtfs.zip")
targetGtfsPath <- file.path("de_filtered.gtfs.zip")

rlog::log_info("Reading gtfs file")
gtfsFeed <- read_gtfs(sourceGtfsPath)
rlog::log_info("Finished reading gtfs file")

rlog::log_info("Reading polygon")
polygon <- geojson_sf(read_file("polygon_bw.json"))
rlog::log_info("Finished reading polygon")

rlog::log_info("Filtering gtfs file by polygon")
filteredGtfs <- filter_by_sf(gtfsFeed, polygon, spatial_operation = sf::st_intersects, keep = TRUE)
rlog::log_info("Finished filtering gtfs file")

rlog::log_info(paste("Writing and saving new gtfs file to: ", targetGtfsPath))
write_gtfs(filteredGtfs, targetGtfsPath)
rlog::log_info(paste("Saved new gtfs file to : ", targetGtfsPath))

rlog::log_info("Finished Script")
