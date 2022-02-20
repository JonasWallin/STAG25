#requires writing a script
#handling characters


my_name <- ""
my_mail <- ""

#' 
#' Implement newtons algorithm from the pseudocode
#' 
#' @param `x0`  - (double) initial value
#' @param `df`  - (function) the derivative of f
#' @param `ddf` - (function) the second derivative of f
#' @retur `x`   - (double) solution
newton <- function( x0, df, ddf, epsilon=1e-4 ){
  
}

#'
#'
#' Implement the Gamma sampler for \alpha,\beta=1 from the pseudocode
#' Note that algorithm should only work when \alpha is less then or equal to one.
#'
#' @param `alpha` - (real ) shape parameter, should be be in the interval (0, 1] 
#' @param `x`     - (double >0) sample from \Gamma(\alpha, \beta) 
sample.gamma <- function(alpha){
  
}