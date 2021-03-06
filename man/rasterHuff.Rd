% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/huff.R
\name{rasterHuff}
\alias{rasterHuff}
\title{Create a Raster from a Huff SpatialPointsDataFrame}
\usage{
rasterHuff(x, mask = NULL)
}
\arguments{
\item{x}{sp or sf object; output of the \code{huff} function.}

\item{mask}{sp or sf object; this object is used to clip 
the raster. (optional)}
}
\value{
Raster of catchment areas values.
}
\description{
This function creates a raster from a regularly spaced 
Huff grid (output of the \code{\link{huff}} function).
}
\examples{
library(raster)
data(hospital)
# Compute Huff catchment areas from known points (hospital) on a
# grid defined by its resolution
myhuff <- huff(knownpts = hospital, varname = "capacity",
               typefct = "exponential", span = 750, beta = 2,
               resolution = 100, mask = paris, returnclass = "sf")
# Create a raster of huff values
myhuffraster <- rasterHuff(x = myhuff, mask = paris)
plot(myhuffraster)
}
\seealso{
\link{huff}, \link{plotHuff}.
}
