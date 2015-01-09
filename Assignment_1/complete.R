complete <- function(directory, id = 1:332) {
  nobs = c()
  for (id_counter in id){
    filename <- paste(directory, "/", sprintf("%03d", id_counter), ".csv", sep="")
    data <- read.csv(file=filename,head=TRUE,sep=",")
    nobs <- c(nobs, sum(complete.cases(data)))
  }
  df = data.frame(id, nobs)
  return (df)
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
}