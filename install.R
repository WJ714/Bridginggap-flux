# install.R

# Install remotes if not already installed (for GitHub packages)
if (!requireNamespace("remotes", quietly = TRUE))
  install.packages("remotes")

# CRAN packages
install.packages(c(
  "REddyProc",     # Eddy Covariance data processing
  "lubridate",     # Date-time handling
  "tidyverse",     # Data manipulation and visualization
  "dplyr",         # Data manipulation (also part of tidyverse)
  "bigleaf",       # Leaf trait estimation
  "data.table",    # Fast data handling
  "ggplot2"        # Visualization (also part of tidyverse)
))

# GitHub packages
remotes::install_github("AmeriFlux/amerifluxr")
