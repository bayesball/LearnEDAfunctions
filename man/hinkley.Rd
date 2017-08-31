\name{hinkley}
\alias{hinkley}
\title{Hinkley's quick method}
\description{
Computes Hinkley's simple measure of asymmetry of a batch.
}
\usage{
hinkley(d)
}
\arguments{
  \item{d}{numeric vector of values}
}
\value{
Hinkley's measure of asymmetry
}
\author{Jim Albert}
\examples{
data(state)
raw=state.x77[,"Population"]
hinkley(raw)
logs=log(raw)
hinkley(logs)
}
\keyword{dplot}