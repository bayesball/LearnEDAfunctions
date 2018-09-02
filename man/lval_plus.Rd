\name{lval_plus}
\alias{lval_plus}
\title{Letter Values Plus}
\description{
Finds outliers by group using Tukey's rule
}
\usage{
lval_plus(df, variate, group_var)
}
\arguments{
  \item{df}{data frame}
  \item{variate}{name of numeric variable}
  \item{group_var}{name of grouping variable}
}
\value{
data frame with additional variable OUT indicating an outlier
}
\author{Jim Albert}

\examples{
lval_plus(beatles, time, album)
}

\keyword{dplot}