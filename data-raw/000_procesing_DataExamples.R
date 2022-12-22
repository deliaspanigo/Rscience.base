# data-raw/mydataset.R
# Data import and processing pipeline

library(readr)
library(readxl)

Rsci_Base001 <- read_excel("data-raw/Rsci_Base001.xlsx")
Rsci_Base001 <- as.data.frame(Rsci_Base001)

# demographics <- read_excel("data-raw/Demographics.xlsx")

# Data cleaning code here...
# (Do NOT put data analysis code here!)

# This should be the last line.
# Note that names are unquoted.
# I like using overwrite = T so everytime I run the script the
# updated objects are saved, but the default is overwrite = F
# usethis::use_data(mydataset, demographics, overwrite = T)
usethis::use_data(Rsci_Base001, overwrite = T)
