
#my.name <- 
#my.mail <- 


#task 1
#for print
#' Write a for loops that takes a vector and prints the output on the following from:
#' x[1] =  ...
#' x[2] = ....
#' .
#' .
#' print out up to two decimal (use round).
#' so if one sends in x = c(1.23,1.241,1) the output should be (printed)
#' x[1] = 1.23
#' x[2] = 1.25
#' x[3] = 1.00
#' To print you can use either cat, or print (or anything else if you prefer).
#'@param `x`  - (n x 1) vector to be printed
print.x <- function(x){
  
}


#' task 2
#' write a functions that that sums all the rolls of a dice (six sided) until
#' a six rolled If a six rolled right away return 0
#' @return `count` - sum of rolls until 6 is rolled
count.until.six <- function(){
  
}

#task 3
#' Write a function that computes the cumulative sum of a vector
#' without using `cumsum()`.
#' Hint: Compare your result against that obtained by calling `cumsum()`.
#'
#' @param  `x`         - (n x 1) the input vector
#'
#' @return `cum.sum.x` - (n x 1) the cumulative sum of `x`
cum.sum <- function(x){

}


#task 4
#' In R you sample a standard normal random variable N(0,1) with
#' rnorm (see help for more detail). Now you should simulate a standard normal
#' given that it is value is greater than two. This is done by generating a 
#' standard normal variables until it is greater then two.
#' The distribution of the random variable will be N(0,1)|X>2
#' @return `x` - ( 1 x 1) x \sim N(0,1) | X>2
sample.one.normal.above.two <- function(){
  
}

#task 5
#' 
#' In the previous task we generated a single sample now you are supposed to generate
#' `n` samples from the same distribution.
#' @param `n`  - (int) number of samples
#' @return `x` - (n x 1) x \sim N(0,1) | X>2
sample.n.normal.above.two  <- function(n){
  

}

#task 6
#'
#' double loop exercise 1
#'
#' In this exercise you should create a function that creates a matrix, `M` with `n` rows
#' and `m` columns. The entry (value) of index i, j should be i*j
#' That is M[i,j] = i*j
#' @param `n`  - (int) number of rows of the matrix
#' @param `m`  - (int) number of columns of the matrix
#' @return `M` - (nxm) matrix output
build.M.matrix <- function(n,m){

}


