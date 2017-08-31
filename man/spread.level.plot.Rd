\name{spread.level.plot}
\alias{spread.level.plot}
\title{Spread versus level plot}
\description{
Constructs a spread versus level plot and displays a resistant fit.
}
\usage{
spread.level.plot(response,group)
}
\arguments{
  \item{response}{numeric vector of response values}
  \item{group}{vector of values of the grouping variable}
}

\author{Jim Albert}

\examples{
data(state)
spread.level.plot(state.x77[,"Area"],state.region)
}

\keyword{dplot}