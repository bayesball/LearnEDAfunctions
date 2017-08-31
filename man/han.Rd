\name{han}
\alias{han}
\title{Hanning a sequence}
\description{
Performs hanning operation on a sequence of values where the
end values are copied on.
}
\usage{
han(sequence)
}
\arguments{
  \item{sequence}{numeric vector of values}
}
\value{
 vector of smoothed values from hanning operations.
}

\author{Jim Albert}

\examples{
# illustrates 3RSS and 3RSSH smooths
plot(WWWusage)
plot(smooth(WWWusage,kind="3RSS"))
plot(han(smooth(WWWusage,kind="3RSS")))
}

\keyword{dplot}