rm(list = ls())
invisible(gc())
# download data --------------------------------------------------------------------------------
library(neonUtilities)
savepath = "F:/16 Footprint/"
# First use neonUtilities to download data for one year
neonUtilities::zipsByProduct(dpID = "DP4.00200.001", # Bundled eddy covariance product
                             site = "BART", # Site
                             startdate = "2021-01", # Start month yyyy-mm
                             enddate = "2021-12", # End month yyyy-mm
                             package = "basic", # basic or expanded, you can save a lot of storage if you use 'basic' but will do example with 'expanded' for now
                             release = "RELEASE-2024", # Data version (don't use provisional), use RELEASE-2024 to match with most recent version of AMF release
                             savepath = savepath) # Where to download data to

# Grab data from the eddy covariance data hdf directory at the DP04 level. This provides all the data at the DP04 level
# including qaulity flags and flux footprint statistics which will have V_SIGMA and MO_LENGTH
stackEddy <- neonUtilities::stackEddy(filepath = "F:/16 Footprint/filesToStack00200/", level = "dp04", avg = 30)
data <- stackEddy$BART # To grab and assign the data.frame

# use rhdf5 library to access metadata without using hdfview app. First use
# list.files to grab the first .h5 file it finds that is not empty (i.e., == 0)
h5FileList <- list.files(path = "F:/16 Footprint/filesToStack00200/", pattern = "h5", full.names = TRUE)
h5File01 <- h5FileList[1]
i <- 1
while (file.info(h5FileList[i])$size == 0) {
  h5File01 <- h5FileList[i+1]
  i <- i + 1
}

h5Attrs <- rhdf5::h5readAttributes(h5File01, name = "BART")
rhdf5::h5closeAll() # Make sure to close h5 file

# Data quality evaluation and QAQC at the analytical stage --------------------------------------------------------------------------------
library(ggplot2)
ggplot(data, aes(x = timeEnd, y = data.fluxCo2.nsae.flux, color = as.factor(qfqm.fluxH2o.nsae.qfFinl))) +
  geom_point(alpha = 0.6) +
  scale_color_manual(values = c("0" = "#67a9cf30", "1" = "#b2182b30")) +  # Adjust as needed for your QF codes
  labs(
    x = "Time",
    y = "CO2 Flux (nsae)",
    color = "Final QF Flag"
  ) +
  theme_minimal()

ggplot(data, aes(x = timeEnd, y = data.fluxCo2.stor.flux, color = as.factor(qfqm.fluxH2o.stor.qfFinl))) +
  geom_point(alpha = 0.6) +
  scale_color_manual(values = c("0" = "#67a9cf30", "1" = "#b2182b30")) +  # Adjust as needed for your QF codes
  labs(
    x = "Time",
    y = "CO2 Flux (nsae)",
    color = "Final QF Flag"
  ) +
  theme_minimal()

# get footprint --------------------------------------------------------------------------------
neonUtilities::footRaster(filepath = "F:/16 Footprint/filesToStack00200/")
