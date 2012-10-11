\name{lna}
\alias{lna}
\title{Stochastic simulation using the linear noise approximation}
\usage{
  lna(model, maxtime, ddt, restart = FALSE)
}
\arguments{
  \item{restart}{a logical value. The default value of
  FALSE runs the standard linear noise approximation. A
  value of TRUE runs the algorithm of Fearnhead, Giagos,
  and Sherlock, 2012.}

  \item{model}{a skm object, created using the create_model
  function}

  \item{maxtime}{the maximum simulation time}

  \item{ddt}{the step size used in the Euler-Maruyama
  solver}
}
\value{
  A matix. The first column contains the simulation time,
  the other columns contain the species levels
}
\description{
  Stochastic simulation using the linear noise
  approximation
}
\examples{
demo(lv)
lna(model, 10, 0.1)
}
\author{
  Colin Gillespie
}
\keyword{character}

