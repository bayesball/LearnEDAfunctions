\name{mtrans}
\alias{mtrans}
\title{Matched transformation}
\description{
Computes a matched power transformation on data that preserves the median.
}
\usage{
mtrans(d,p)
}
\arguments{
  \item{d}{numeric vector of values}
  \item{p}{power of transformation}
}
\value{
vector of values of matched transformation
}
\author{Jim Albert}
\examples{
data(state)
raw=state.x77[,"Population"]
matched.roots=mtrans(raw,0.5)
matched.logs=mtrans(raw,0)
boxplot(data.frame(raw,matched.roots,matched.logs))
}
\keyword{dplot}