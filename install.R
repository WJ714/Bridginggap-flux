# Install necessary R packages
install.packages(c("amerifluxr", "REddyProc", "lubridate", "tidyverse", "dplyr", 
                   "bigleaf", "data.table", "ggplot2", "ggpubr", "Kendall", "googledrive"))

# Install devtools if not already installed
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

# Install amerifluxr from GitHub
devtools::install_github("chuhousen/amerifluxr")