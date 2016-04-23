# R Programming
# Assignment Week 2
# Part 1 
# Hazim Hanif

pollutantmean <- function(directory, pollutant, id = 1:332){
  combine <- NULL
  
  for ( i in id ){
    current_dir <- paste(directory,"/",formatC(i, width=3, flag="0"),".csv",sep = "")
    file <- read.csv(current_dir)
    combine <- c(combine,file[,pollutant])
  }
  
  output<-mean(combine,na.rm = TRUE)
  return(output)
}


