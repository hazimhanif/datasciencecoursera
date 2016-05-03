######### Question 1 ########

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv",destfile = "./americansurvey.csv", method="curl")
d <- read.csv("americansurvery.csv")
strsplit(names(d),split="wgtp")

######### Question 2 ########

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",destfile = "./gdp.csv", method="curl")
gdp <- read.csv("gdp.csv")
d <-gdp$X.3
sub <- gsub(",","",gdp$X.3)
sub <- grep("[0-9]",sub, value = TRUE)
mean(as.numeric(sub[1:190]),na.rm = TRUE)

######### Question 3 ########

grep("^United",countryNames),3


######### Question 4 ########

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv",destfile = "./gdp.csv", method="curl")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",destfile = "./gdp.csv", method="curl")
edu <- read.csv("edu.csv")
gdp <- read.csv("gdp.csv")
gdp <- gdp[5:194,]
m <- merge(edu,gdp,by.x ="CountryCode",by.y="X" , all=TRUE)
length(grep("Fiscal year end: June",m$Special.Notes))


######### Question 5 ########

library(quantmod)
library(lubridate)

amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)
d <- as.Date(sampleTimes)
length(d[which(format(d,"%Y")==2012)])
k <- d[which(format(d,"%Y")==2012)]
length(k[which(format(k,"%a")=="Mon")])

