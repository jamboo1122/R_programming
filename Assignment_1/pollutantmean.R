pollutantmean <- function(directory, pollutant, id = 1:332) {
  final = c()
  for (id_counter in id){
    filename <- paste(directory, "/", sprintf("%03d", id_counter), ".csv", sep="")
    data <- read.csv(file=filename,head=TRUE,sep=",")
    final <- c(final, data[pollutant][!is.na(data[pollutant])])
  }
  return (round(mean(final), 3))
  
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  
}