rankhospital <- function(state, outcome, num = "best") {
    ## Read outcome data
    #Import the data and set column related as numeric
    data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    colnum <- NULL
    
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
    
    #check the num if it num or string
    if(num=="best"){
      num <- 1
    }else if(num=="worst"){
      num <- 0
    }else if(is.numeric(num)==TRUE){
      num <- num
    }else{
      stop("invalid num")
    }
    
    
    data[, colnum] <- as.numeric(data[, colnum])
    data[, 2] <- as.character(data[, 2])
    combine <- data.frame(data$State,data$Hospital.Name,data[, colnum])
    combine <- na.omit(combine)
    combine <- combine[which(combine$data.State==as.character(state)),1:3]
    
    #check the num threshold
    if(num > length(unique(data$Hospital.Name))){
      return("NA")
    }
    
    order.pop <- order(combine[,3])
    combine <- combine[order.pop,]
    combine$rank <- 1:nrow(combine)
    
    if(as.numeric(num)==0){
      ties <- combine[which(combine[,3]==combine[nrow(combine),3]),1:4]
    }else{
      ties <- combine[which(combine[,3]==combine[num,3]),1:4]
    }
    
    
    if(nrow(ties)>1){
      temp_rank <- ties$rank
      order2.pop <- order(ties$data.Hospital.Name)
      ties <- ties[order2.pop,1:3]
      ties$rank <- temp_rank  ##to swap the rank back to the original place
      return(as.vector(as.character(ties[which(ties$rank==num),2])))
      
    }else{
      return(as.vector(as.character(ties[1,2])))
    }
  
}