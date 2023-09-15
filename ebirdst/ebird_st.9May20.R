# ebirdst: Access and Analyze eBird Status and Trends Data 
# https://cornelllabofornithology.github.io/ebirdst/
setwd("/home/bvt/Dropbox/eng_science/R/wd/ebird/ebirdst")
# setwd("/media/bvt/913d2c1c-f3d7-4c30-9b83-eca903c169dd/R/ebd_US_relDec-2019")
install.packages("ebirdst")
library(ebirdst)
library(viridis)
library(raster)
library(sf)
library(rnaturalearth)