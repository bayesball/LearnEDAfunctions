\name{plot2way}
\alias{plot2way}
\title{Plot of an additive fit}
\description{
Graphs an additive fit of a two-way table.
}
\usage{
plot2way(row.part,col.part,row.lab=NULL,col.lab=NULL)
}

\arguments{
  \item{row.part}{numeric vector of values of row component}
  \item{col.part}{numeric vector of values of column component}
  \item{row.lab}{character vector of labels of row component}
  \item{col.lab}{character vector of labels of column component}
}

\author{Jim Albert}

\examples{
temps=matrix(data=c(50,30,35,21,38,
              73,58,65,57,63,
              88,83,89,84,86,
              73,62,68,59,66),nrow=5,ncol=4,
              dimnames=list(c("Atlanta","Detroit","Kansas City",
              "Minneapolis","Philadelphia"),c("January","April",
              "July","October")))
fit=medpolish(temps)
plot2way(fit$row+fit$overall,fit$col,
  dimnames(temps)[[1]],dimnames(temps)[[2]])
}

\keyword{dplot}