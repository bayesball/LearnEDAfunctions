\name{lval}
\alias{lval}
\title{Letter values}
\description{
Computes the letter values for a batch of numbers.
}
\usage{
lval(x,na.rm=TRUE)
}
\arguments{
  \item{x}{numeric vector of values}
  \item{na.rm}{logical value indicating whether NA values should
      be stripped before the computation proceeds}
}
\value{
  dataframe with components depth, lo, hi, mids, and spreads
}

\author{Jim Albert}

\examples{
lval(rnorm(100))
}

\keyword{manip}