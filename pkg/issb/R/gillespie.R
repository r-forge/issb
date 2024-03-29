#' @title Stochastic simulation using the standard Gillespie algorithm
#' @inheritParams deterministic
#' @author Colin Gillespie
#' @return  A matrix. The first column contains the simulation time, the other columns contain the species 
#' levels
#' @keywords character
#' @export
#' @examples demo(lv)
#' gillespie(model, 10)

gillespie = function(model, maxtime)
{
    sim_time = 0; i = 1; x = model$get_initial()
    N = 100000
    xmat = matrix(0, nrow=N, ncol=(length(x) + 1))
    xmat[i, ] = c(sim_time, x)
    
    s = model$get_stoic()
    get_haz = model$get_haz
    h = get_haz(x)
    p = model$get_pars()
    
    while(sim_time < maxtime && sum(h) > 0){
        sim_time = sim_time + rexp(1, sum(h))
        j = sample(length(p), 1, prob=h)
        x = x + s[ ,j]
        i = i + 1
        xmat[i, ] = c(sim_time, x)
        h = get_haz(x)
    }
    
    if(sim_time < maxtime) {
        xmat[i+1,] = xmat[i,]
        xmat[i+1,1] = maxtime
    } else {
        xmat[i,1] = maxtime
    }
    colnames(xmat) = c("Time", rownames(s))
    return(xmat[1:i,])
}	

