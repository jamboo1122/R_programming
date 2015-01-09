corr <- function(directory, threshold = 0) {
  
  id = 1:332
  result = c()
  for (id_counter in id){
    
    cases <- complete(directory, id_counter)
    if (cases$nobs[1] > threshold) {
      filename <- paste(directory, "/", sprintf("%03d", id_counter), ".csv", sep="")
      data <- read.csv(file=filename,head=TRUE,sep=",")
      data <- data[complete.cases(data),]
      result <- c(result, cor(data$nitrate, data$sulfate))
    }
  }
  return (result)
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
}