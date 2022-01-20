
#my_name <- 
#my_mail <- 

#' task 1
#'
#' The function should take a Matrix and name the column names to
#' 1:d  where d is the number of columns of the matrix.
#' If M is not a matrix the function throw an error which can be done with stop function
#'
#' @param  M - (n x d) matrix 
#' @return M - (n x d) matrix 
name.columns <- function(M){
  
}


#' task 2
#' 
#' Same as above but with row names
#' @param  M - (n x d) matrix 
#' @return M - (n x d) matrix (or integer -1)
name.rows <- function(M){
  
}

#' task 3
#'
#' Create a data.frame which contains 52 entries
#' with factors face and suit. 
#' The suits are: "heart", "spade", "diamond" and "club"
#' The faces are: "ace", "king", "queen", "jack, "ten", "nine", "eight", "seven", "six", "five", "four",."three"., "two"
#' @return deck (52 x 2, data.frame) deck of cards [,1] - suit
#'                                                 [,2] -face
create.deck <-function(){
  
}


#' task 4
#' 
#' Takes five unique cards (rows in the deck from create.deck)
#' and checks if the five cards contains a three of a kind
#' @param cards - (5 x 2, data.frame) 
#' @return is.three.kind - (boolean) is it three of a kind
is.three.of.a.kind <- function(cards){
  
}


#' task 5
#'
#' Write a function that reads a csv file and return the column with name column.name.
#' the separation between columns is supposed to be "," (read the help in read.scv how to ensure this)
#' If column.name does not exists return -1 (integer)
#' @param file.name.csv - (string) location of a csv file
#' @param column.name   - (string) string of column nae
#' @return column (n x 1) the column with name column.name 
get.column <- function(file.name.csv, column.name){
  
}

#' task 6
#' Using read.csv the function read.data.1 should load the file 'lab2_1.csv'.
#' You are given a dir.name the file is supposed to be in that directory.
#' Use paste to join dir.name and 'lab2_1.csv' to get the correct path to file.
#' The data has four columns aged, female, cond, aged365.
#' Make the correct columns to factors (which are reasonable as factor?).
#' 
#' The data is a simplifcation of:
#' https://openpsychologydata.metajnl.com/articles/10.5334/jopd.aa/
#' @param dir.name     - name of the directory where the file is (end with /)
#' @return data.out   - (data.frame n x 4) data.frame with columns aged, female, cond, aged365
read.data.1 <- function(dir.name){
  
}


#' task 7
#' 
#' Same task as task 7 however no you should load the file 'lab2_2.csv'.
#' Look in the file and figure how set the options in read.csv so that file works  (use help(read.csv))
#' @param dir.name     - name of the directory where the file is (end with /)
#' @return data.out   - (data.frame n x 4) data.frame with columns aged, female, cond, aged365
read.data.2 <- function(dir.name)
{
  
}