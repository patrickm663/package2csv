# AUTHOR: Patrick Moehrke
# EMAIL: patrickmoehrke46@gmail.com
# LICENCE: BSD 3-Clause

# This script allows users to specify a package and download all the datasets
# as CSVs for analysis elsewhere.
# As a default, index numbering is removed.

write_datasets_to_csv <- function(package) {
    d <- data(package = package)
    list_of_datasets <- d$results[, "Item"]
    for (dataset in list_of_datasets) {
        data(list = dataset)
        write.csv(get(dataset),
		  paste(dataset, ".csv", sep = ""),
		  row.names = FALSE)
        rm(list = dataset, pos = 1)
    }
}

# Example:

#library(plyr)
#write_datasets_to_csv("plyr")
