\name{half.slope.ratio}
\alias{half.slope.ratio}
\title{Half slope ratio}
\description{
Computes the half slope ratio for three summary points and
power transformations on the two variables.
}
\usage{
half.slope.ratio(sx,sy,px,py)
}
\arguments{
  \item{sx}{numeric vector of summary values of the x variable}
  \item{sy}{numeric vector of summary values of the y variable}
  \item{px}{power of the transformation on the x variable}
  \item{py}{power of the transformation on the y variable}
}

\value{
Value of the half slope ratio on the transformed summary points
}

\author{Jim Albert}

\examples{
sx=c(10,30,50)
sy=c(5,8,20)
half.slope.ratio(sx,sy,1,1)
half.slope.ratio(sx,sy,-.5,-.5)
}

\keyword{manip}