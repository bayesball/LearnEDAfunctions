\name{rline}
\alias{rline}
\title{Resistant line}
\description{
Fits Tukey's resistant line of form a + b (x - xC).
}
\usage{
rline(formula, df, iter=1)
}
\arguments{
  \item{formula}{formula for line of form y ~ x}
  \item{df}{data frame}
  \item{iter}{number of iterations of algorithm}
}
\value{
 \item{a}{value of intercept a}
 \item{b}{value of slope b}
 \item{xC}{value of xC}
 \item{half.slope.ratio}{value of half slope ratio after one iteration}
 \item{residual}{vector of residuals}
 \item{spoints.x}{vector of summary x coordinates}
 \item{spoints.y}{vector of summary y coordinates}
}


\author{Jim Albert}

\examples{
df <- data.frame(x = 1:10,
                 y = 3 * (1:10) + rnorm(10))
fit <- rline(y ~ x, df, iter=5)
}

\keyword{dplot}