\name{multiple_sims}
\alias{multiple_sims}
\title{Multiple stochastic simulation}
\usage{
  multiple_sims(model, maxtime, tstep, no_sims, no_cores,
    simulator, ...)
}
\arguments{
  \item{no_sims}{the number of stochastic simulations to
  perform}

  \item{no_cores}{the number of CPU cores to utilise.}

  \item{simulator}{the stochastic simulator that will be
  used.}

  \item{...}{additional parameters that will be passed to
  the simulator}

  \item{model}{a skm object, created using the create_model
  function}

  \item{maxtime}{the maximum simulation time}

  \item{tstep}{the output grid size. Note this doesn't
  (really) affect the underlying ODE solver}
}
\value{
  A matrix. The first column contains the simulation time,
  the other columns contain the species. levels
}
\description{
  Multiple stochastic simulation
}
\examples{
demo(lv)
multiple_sims(model, 5, 1, 4, 2, pleap, ddt=0.5)
}
\author{
  Colin Gillespie
}
\keyword{character}

