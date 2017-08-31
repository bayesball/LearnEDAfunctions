\name{symplot}
\alias{symplot}
\title{Symmetry plot}
\description{
Constructs a symmetry plot.
}
\usage{
symplot(d)
}
\arguments{
  \item{d}{numeric vector of values}
}

\author{Jim Albert}

\examples{
# symmetry plot for normally distributed data
symplot(rnorm(100))
# symmetry plot for exponential data
symplot(rexp(100))
}

\keyword{dplot}