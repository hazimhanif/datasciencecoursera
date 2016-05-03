######### Question 1 ########

#HHT Household  , ACR=3 , AGS =6

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv",destfile = "./americansurvey.csv", method="curl")
d <- read.csv("americansurvery.csv")
agricultureLogical <- d$ACR>=3 & d$AGS>=6
head(which(agricultureLogical))

######### Question 2 ########

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg",destfile = "./instructor.jpg", method="curl")
library(jpeg)
pic <- readJPEG("instructor.jpg", native=TRUE)
quantile(pic,c(.30,.80))

######### Question 3 ########

library(dplyr)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",destfile = "./gdp.csv", method="curl")
gdp <- read.csv("gdp.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv",destfile = "./edu.csv", method="curl")
m <- merge(edu,gdp,by.x ="CountryCode",by.y="X" , all=TRUE)
z <- arrange(m, desc(Gross.domestic.product.2012))
print(z[13,"CountryCode"])

