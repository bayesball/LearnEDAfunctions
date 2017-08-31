\name{rline}
\alias{rline}
\title{Resistant line}
\description{
Fits Tukey's resistant line of form a + b (x - xC).
}
\usage{
rline(x,y,iter=1)
}
\arguments{
  \item{x}{numeric vector of values of explanatory variable}
  \item{y}{numeric vector of values of response variable}
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
x=1:10
y=3*x+rnorm(10,0,1)
y[1]=20
fit=rline(x,y,iter=5)
plot(x,y)
curve(fit$a+fit$b*(x-fit$xC),add=TRUE)
# contrast with least-squares fit
abline(lm(y~x))
}

\keyword{dplot}