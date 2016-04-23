# R Programming
# Assignment Week 2
# Part 2 
# Hazim Hanif

complete <- function(directory, id = 1:332){
  
    idList <- NULL
    nobsList <- NULL
    
    for ( i in id ){
      current_dir <- paste(directory,"/",formatC(i, width=3, flag="0"),".csv",sep = "")
      file <- read.csv(current_dir)
      nobsCounter <- 0
  
      for(j in 1:nrow(file)){
          if(is.na(file[j,2])==FALSE && is.na(file[j,3])==FALSE){
            nobsCounter <- nobsCounter +1 
          }
      }
      
      idList <- c(idList,i)
      nobsList <- c(nobsList,nobsCounter)
      
    }
      
    combineDF <- data.frame(id=idList,nobs=nobsList)
    return(combineDF)
}

