# package2csv
This R package allows users to easily download all the datasets from a given R package into CSV for further analysis.

The script is a result of much trial-and-error to automate the process of writing datasets to CSV form. No consise way was available online, so I made my own.

## Installation
### Prerequisite
Ensure 'devtools' is installed and you are able to install packages from GitHub.
```
install.packages("devtools")
```
### Installation using DevTools
Install this package as follows:
```
library(devtools)
devtools::install_github("patrickm663/package2csv")
```
Load the package:
```
library(package2csv)
```
## Running the Package
In an R session, run `datasets_to_csv(<name of package>)`.

Multiple packages can be read at once by passing the package names as a vector of strings. For example: 
```datasets_to_csv(c("MASS", "plyr"))```

## TODO
- [ ] Add Man page
- [ ] Add support for loading multiple packages
- [ ] Allow the user the ability to specify their working directory

## Licence
This is free software with NO WARRANTY offered under BSD 3-Clause.
