pollutantmean <- function(directory, pollutant, id=1:332){
  
  setwd("/Users/Joaopedro/Downloads/")

  fileList = list.files(directory)
  csvFiles <- file.path(directory,fileList[id])
  dataFrames <- lapply(csvFiles, read.csv)
  dataFrame <- Reduce(function(x, y) rbind(x, y), dataFrames)
  mean(dataFrame[ , pollutant], na.rm = TRUE)
}
