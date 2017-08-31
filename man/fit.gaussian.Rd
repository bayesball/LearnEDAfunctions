\name{fit.gaussian}
\alias{fit.gaussian}
\title{Fitting a Gaussian curve to binned data}
\description{
Fits a Gaussian curve with known mean and standard deviation to binned data.
}
\usage{
fit.gaussian(data,bins,g.mean,g.sd)
}
\arguments{
  \item{data}{numeric vector of values of variable}
  \item{bins}{a vector giving the breakpoints between histogram cells}
  \item{g.mean}{mean of Gaussian distribution}
  \item{g.sd}{standard deviation of Gaussian distribution}
}
\value{
 \item{counts}{vector of frequencies of the bins}
 \item{probs}{vector of fitted probabilities of the bins}
 \item{expected}{vector of expected frequencies of the bins}
 \item{residual}{vector of simple rootogram residuals}
}

\author{Jim Albert}

\examples{
# fit Gaussian curve to simulated data from t distribution
data=rt(200,df=5)
bins=pretty(range(data))
g.mean=0
g.sd=1
fit.gaussian(data,bins,g.mean,g.sd)
}

\keyword{dplot}