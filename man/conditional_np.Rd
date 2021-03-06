% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conditional_np.R
\name{conditional_np}
\alias{conditional_np}
\title{Conditional distribution of a multivariate normal distribution Np}
\usage{
conditional_np(x, mu, Sigma)
}
\arguments{
\item{x}{is a vector with the values that are known. For example, \code{c(3, NA, 5, NA)} means that we are interested in the conditional distribution of X2 and X4 when X1=3 and X3=5.}

\item{mu}{is the mean vector of the Np.}

\item{Sigma}{is the covariance matrix of the Np.}
}
\value{
a list with the mean and covariance matrix of the conditional distribution.
}
\description{
This function can be used to obtain the conditional distribution of any Np.
}
\examples{
# Consider a N3 normal distribution
mu <- c(3, -1, 1)
Sigma <- matrix(c(3, -1, 1,
                  -1, 1, 0,
                  1, 0, 2), ncol=3)
                  
# We want the conditional distribution of X2 given X1=2 and X3=0
conditional_np(x=c(2, NA, 0), mu=mu, Sigma=Sigma)

# We want the conditional distribution of X1 and X3 given X2=2
conditional_np(x=c(NA, 2, NA), mu=mu, Sigma=Sigma)

}
