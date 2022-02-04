#' In this lab you are supposed to compute all the distribution functions
#' d,p,q, and r for the triangular distribution
#' https://en.wikipedia.org/wiki/Triangular_distribution
#' d - is PDF
#' p - is CDF
#' You are not allowed use the package triangle
my_name <- ""
my_mail <- ""

#' Task 1
#' 
#' the density function
#' @param `x` - (double) values where one evaluates the density
#' @param `a` - (double) the minimum value of distribution
#' @param `b` - (double >a) the maximum value of the distribution
#' @param `c` - (double [a,b]) the position of the largest density value
#' @param `log` - (logical) if true compute the logarithm of the density.
#' @return the density at x
dtriangle <- function(x, a, b, c, log = F){

}
#' Task 2
#'
#' the probability function i.e. P(X <= q)
#' @param `q` - (double) the point for which one computer the probability
#' @param `a` - (double) the minimum value of distribution
#' @param `b` - (double >a) the maximum value of the distribution
#' @param `c` - (double [a,b]) the position of the largest density value
#' @param `lower.tail` - (logical) compute the lower tail
#' @param `log.p` - (logical) if true compute the logarithm of the density.
#' @param `P`  - (double) returns the probability 
ptriangle <- function(q, a, b, c, lower.tail = T, log.p = F){

}

#'
#' the quantile function
#' @param `p` - (n x 1) probabilities value between [0, 1]
#' @param `a` - (double) the minimum value of distribution
#' @param `b` - (double >a) the maximum value of the distribution
#' @param `c` - (double [a,b]) the position of the largest density value
#' @param `lower.tail` - (logical) compute the lower tail
#' @param `p` - (n x 1) the quantiles of p
#' @param `q` - (n x 1) returns the quantile matching the probability `p`
qtriangle <- function(p, a, b, c, lower.tail  =TRUE){
  
  q <- rep(0, length(p))
  if(lower.tail==F)
    p = 1-p
  ind <- p <= (c-a)^2/((b-a)*(c-a))
  q[ind] <- a + sqrt((b-a)*(c-a) * p[ind] )
  q[ind==F] <- b -  sqrt((b-a)*(b-c) * (1-p[ind==F]) )
  
  return(q)
}
#' Task 3
#' the random function generator
#' @param `n` - (int) how many samples to generate
#' @param `a` - (double) the minimum value of the density
#' @param `b` - (double >a) the maximum value of the density
#' @param `c` - (double [a,b]) the position of the largest density value
#' @return (n x 1) random samples of random from density triangle(a,c)
rtriangle <- function(n, a, b, c){
}


#' Task 4
#'
#' Write a function that computes the probability that a triangular distribution with parameters
#' a,b, c is in the interval [lower, upper].
#' @param `lower` - (double) lower boundary
#' @param `upper` - (double) upper boundary
#' @param `a` - (double) the minimum value of the density
#' @param `b` - (double >a) the maximum value of the density
#' @param `c` - (double [a,b]) the position of the largest density value
#' @return `P` - (double) the probability of being in the interval [lower,upper] ( P(X \in [lower,upper]))
prob.in.interval <- function(lower, upper, a,b,c){
  
}