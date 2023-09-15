# https://cornelllabofornithology.github.io/auk/
# setwd("/home/bvt/Dropbox/eng_science/R/wd/fractal")
#setwd("/media/bvt/913d2c1c-f3d7-4c30-9b83-eca903c169dd/R/ebd_US_relDec-2019")
setwd("~/nas/NAS-home/engineering/ebird")


library(auk)

# path to the ebird data file, here a sample included in the package
# get the path to the example data included in the package
# in practice, provide path to ebd, e.g. f_in <- "data/ebd_relFeb-2018.txt
f_in <- system.file("extdata/ebd-sample.txt", package = "auk")
# output text file
f_out <- "ebd_filtered_bvt.txt"
ebird_data <- f_in %>% 
  # 1. reference file
  auk_ebd() %>% 
  # 2. define filters
  auk_species(species = "Canada Jay") %>% 
  auk_country(country = "Canada") %>% 
  # 3. run filtering
  auk_filter(file = f_out) %>% 
  # 4. read text file into r data frame
  read_ebd()
