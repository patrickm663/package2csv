\name{package2csv}
\alias{package2csv}
\title{
datasets_to_csv
}
\description{
This package allows users to easily download all the CSVs in a given package to CSV.
}
\usage{
# library(devtools)
# devtools::install_github("patrickm663/package2csv")
# libary(package2csv)

## Load the package(s) that contain datasets you wish to extract
library(MASS)

## Argument accepts package name as string
datasets_to_csv("<valid dataset>", workdir = "optional/valid/directory/")
}
\arguments{
  \item{x}{
Package name as string. Multiple packages can be passed as a vector of strings.
}
  \item{workdir}{
  OPTIONAL: valid working directory as a string.
  }
}

\value{
No value returned.
}
\references{
}
\author{
Patrick Moehrke
}
\note{
}

\seealso{
  \code{write.csv}
}
\examples{
## Download all datasets from MASS package into the current working directory

library(MASS)
datasets_to_csv("MASS")
