rankall <- function(outcome, num = "best") {
  ## Read outcome data
  ## Init source rankhospital.R
  
  source("rankhospital.R")
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  
  final_result <- data.frame(matrix(ncol=2))
  colnames(final_result) <- c("hospital","state")
  
  uq <- unique(data$State)
  uq <- sort(uq)
  
  for(i in uq){
    result <- rankhospital(i, outcome, num)
    final_result <- rbind(final_result,c(result,i))
  }
  
  final_result <- subset(final_result, !is.na(final_result$state))
  return(final_result)
  
}