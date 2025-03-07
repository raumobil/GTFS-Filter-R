# https://hub.docker.com/_/r-base/
FROM r-base
RUN apt-get -y update && apt-get install -y  libudunits2-dev libgdal-dev libgeos-dev libproj-dev
COPY . /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts
RUN Rscript install_packages.R
CMD ["Rscript", "gtfs_filter.R"]