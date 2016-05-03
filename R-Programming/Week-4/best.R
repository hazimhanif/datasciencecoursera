best <- function(state, outcome) {
  ## Read outcome data
  #Import the data and set column related as numeric
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  #check the State if it exist or not#
  if(length(data[which(data$State==as.character(state)),1])==0){
    stop("invalid state")
  }
  
  #check the outcome if it exist or not#
  if(outcome=="heart attack"){
    colnum <- 11
   }else if(outcome=="heart failure"){
     colnum <- 17
   }else if(outcome=="pneumonia"){
    colnum <- 23
   }else{
     stop("invalid outcome")
  }
  
  data[, colnum] <- as.numeric(data[, colnum])
  data[, 2] <- as.character(data[, 2])
  combine <- data.frame(data$State,data$Hospital.Name,data[, colnum])
  combine <- na.omit(combine)
  combine <- combine[which(combine$data.State==as.character(state)),1:3]
  
  order.pop <- order(combine[,3])
  combine <- combine[order.pop,] 
  
  ties <- combine[which(combine[,3]==combine[1,3]),1:3]
  
  if(nrow(ties)>1){
   order2.pop <- order(ties$data.Hospital.Name)
   ties <- ties[order2.pop,]
   return(as.vector(as.character(ties[1,2])))
  }else{
    return(as.vector(as.character(combine[1,2])))
  }  
  
}

