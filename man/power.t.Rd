\name{power.t}
\alias{power.t}
\title{Power transformation}
\description{
Computes the standardized power transformation on a vector.  A power
of 0 is interpreted as the natural log transformation.
}
\usage{
power.t(x, power)
}
\arguments{
  \item{x}{numeric vector of values}
  \item{power}{scalar value of power}
}
\value{
  vector of reexpressed values
}

\author{Jim Albert}

\examples{
power.t(c(3,6,5,4,7),0.5)
}

\keyword{manip}