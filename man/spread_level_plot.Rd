\name{spread_level_plot}
\alias{spread_level_plot}
\title{Spread versus level plot}
\description{
Constructs a spread versus level plot.
}
\usage{
spread_level_plot(df, variate, group_var)
}
\arguments{
  \item{df}{data frame}
  \item{variate}{name of numeric variable}
  \item{group_var}{name of grouping variable}
}

\author{Jim Albert}

\examples{
spread_level_plot(beatles, time, album)
}

\keyword{dplot}