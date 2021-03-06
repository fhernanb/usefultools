% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shade.R
\name{shade.norm}
\alias{shade.norm}
\alias{shade.t}
\alias{shade.F}
\alias{shade.chi}
\title{Shading functions for interpretation of pdf probabilities}
\usage{
shade.norm(x = NULL, from = NULL, to = NULL, sigma = 1, mu = 0,
  tail = "lower", show.p = TRUE, show.d = FALSE, show.dist = TRUE,
  digits = 5, legend.cex = 0.9, shade.col = "gray", ...)

shade.t(x = NULL, from = NULL, to = NULL, nu = 3, tail = "lower",
  show.p = TRUE, show.d = FALSE, show.dist = TRUE, digits = 5,
  legend.cex = 0.9, shade.col = "gray", ...)

shade.F(x = NULL, from = NULL, to = NULL, nu1 = 1, nu2 = 5,
  tail = "lower", show.p = TRUE, show.d = FALSE, show.dist = TRUE,
  prob.to.each.tail = 0.025, digits = 5, legend.cex = 0.9,
  shade.col = "gray", ...)

shade.chi(x = NULL, from = NULL, to = NULL, nu = 1,
  tail = "lower", show.p = TRUE, show.d = FALSE, show.dist = TRUE,
  prob.to.each.tail = 0.025, digits = 5, legend.cex = 0.9,
  shade.col = "gray", ...)
}
\arguments{
\item{x}{A quantile, i.e. \eqn{X = x}, or if \code{tail = "two.custom"} ins \code{shade.norm}, a two element vector specifying the upper bound of the lower tail and the lower bound of the upper tail.}

\item{from}{To be used with \code{tail = "middle"}; the value \emph{a} in \eqn{P(a < X < b)}.}

\item{to}{To be used with \code{tail = "middle"}; the value \emph{b} in \eqn{P(a < X < b)}.}

\item{sigma}{Standard deviation for the nomral distribution.}

\item{mu}{Mean of the normal distribution.}

\item{tail}{One of four possibilities: \code{"lower"} provides lower tail shading, \code{"upper"} provides upper tail shading, \code{"two"} provides two tail shading, and \code{"middle"} provide shading in the middle of the pdf, between \code{"from"} and \code{"to"}.  The additional option \code{"two.custom"} is allowed for \code{shade.norm}. This allows calculation of asymmetric two tailed probabilities.  It requires that the argument \code{x} is a two element vector with elements denoting the upper bound of the lower tail and the lower bound of the upper tail.  For discrete pdfs (binomial and Poisson) the possibility \code{"X=x"} is also allowed, and will be equivalent to the density. Two tailed probability is not implemented for \code{shade.poi}.}

\item{show.p}{Logical; indicating whether probabilities are to be shown.}

\item{show.d}{Logical; indicating whether densities are to be shown.}

\item{show.dist}{Logical; indicating whether parameters for the distribution are to be shown.}

\item{digits}{Number of digits to be reported in probsabilities and densities.}

\item{legend.cex}{Character expansion for legends in plots.}

\item{shade.col}{Color of probability shading.}

\item{...}{Arguments to be passed to methods, such as graphical parameters (see par).}

\item{nu}{Degrees of freedom.}

\item{nu1}{Numerator degrees of freedom for the \emph{F}-distribution.}

\item{nu2}{Denominator degrees of freedom for the \emph{F}-distribution.}

\item{prob.to.each.tail}{Probability to be apportioned to each tail in the \emph{F} and Chi-square distributions if \code{tail = "two"}.}
}
\description{
Creates plots with lower, upper, two-tailed, and middle of the distribution shading for popular pdfs.
}
\author{
Ken Aho
}
