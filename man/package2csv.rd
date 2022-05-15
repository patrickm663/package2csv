\name{package2csv}
\alias{package2csv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
datasets_to_csv
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This package allows users to easily download all the CSVs in a given package to CSV.
}
\usage{
# library(devtools)
# devtools::install_github("patrickm663/package2csv")
# libary(package2csv)

## Load the package(s) that contain datasets you wish to extract
library(MASS)

## Argument accepts package name as string
dataset_to_csv("<valid dataset>", workdir = "optional/valid/directory/")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
Package name as string. Multiple packages can be passed as a vector of strings.
}
  \item{workdir}{
  OPTIONAL: valid working directory as a string.
  }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
No value returned.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
Patrick Moehrke
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
  \code{write.csv}
}
\examples{
## Download all datasets from MASS package into the current working directory

library(MASS)
datasets_to_csv("MASS")
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
