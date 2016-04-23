# R Programming
# Assignment Week 2
# Part 3 
# Hazim Hanif

corr <- function(directory, threshold=0){
  
  df <- complete(directory)
  cor_vect <- NULL
  
  for(row in 1:nrow(df)){
    if(df[row,"nobs"] > threshold){
      
      current_dir <- paste(directory,"/",formatC(df[row,"id"], width=3, flag="0"),".csv",sep = "")
      monitor_data  <- read.csv(current_dir)
      cor_result <- cor(x = monitor_data[,"sulfate"],y = monitor_data[,"nitrate"], use="pairwise.complete.obs")
      cor_vect <- c(cor_vect,cor_result)
    }
  }
  
  if(is.null(cor_vect)==TRUE){
    return(as.numeric(cor_vect))
  }
  
  return(cor_vect)
  
}

