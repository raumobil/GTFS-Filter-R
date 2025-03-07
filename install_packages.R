# R Script to install dependencies, which we need for gtfs_filter.R

# you can choose between this repos: https://cran.r-project.org/mirrors.html.
# But the first one is recommend e.g. in StackOverflow commends.
print("install packages")

mainRepo <- "https://cloud.r-project.org"

# for filtering gtfs
install.packages("gtfstools", repos = mainRepo)
# for parsing GeoJson to a "sf" object, some geometry object
install.packages("geojsonsf", repos = mainRepo)
# for logging
install.packages("rlog", repos = mainRepo)
# for reading files
install.packages("brio", repos = mainRepo)



print("installed packages")