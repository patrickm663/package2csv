# AUTHOR: Patrick Moehrke
# EMAIL: patrickmoehrke46@gmail.com
# LICENCE: BSD 3-Clause

# This script allows users to specify a package and download all the datasets
# as CSVs into your current working directory for analysis elsewhere.
# As a default, index numbering is removed.

datasets_to_csv <- function(package, workdir = "") {
    d <- data(package = package)
    list_of_datasets <- d$results[, "Item"]
    if(length(list_of_datasets) == 0){
      return(print("No datasets found"))
    }

    for (dataset in list_of_datasets) {
        dataset <- gsub(" ", "", dataset, fixed = TRUE)
        data(list = dataset)
        tryCatch({
          df <- apply(get(dataset), 2, as.character)
          write.csv(df,
                    file = paste(workdir, dataset, ".csv", sep = ""),
                    row.names = FALSE)
          rm(list = dataset, pos = 1)
        }, error = function(e) e)
    }
}

# Example:

#library(MASS)
#datasets_to_csv("MASS")
