############# Question 1  ###############
library(httr)
require(httpuv)
require(jsonlite)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. Register an application at https://github.com/settings/applications
#    Insert your values below - if secret is omitted, it will look it up in
#    the GITHUB_CONSUMER_SECRET environmental variable.
#
#    Use http://localhost:1410 as the callback url
myapp <- oauth_app("cousera", "434542e94a2f45c7c6db", secret="6fd790ca5351411160eeda12ce96e23cf04ca008")

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

req <- GET("https://api.github.com/users/jtleek/repos")
j <- content(req)
j2 <- jsonlite::fromJSON(toJSON(j))
jsonlite::toJSON(j , pretty = TRUE)
print(j2["full_name"])
test <- j2[j2$full_name=="jtleek/datasharing",]
print(test["created_at"])



############# Question 2 & 3  ###############

library(sqldf)

acs <- read.csv("cs.csv")

sqldf("select pwgtp1 from acs where AGEP < 50")

sqldf("select distinct AGEP from acs")


############# Question 4  ###############

con <- url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode <- readLines(con)
close(con)

for(i in c(10,20,30,100)){
  print(nchar(htmlCode[i]))
}

############# Question 5  ###############

# A fixed with file
# skip the line to a sctructured line
# Define each width of each colum into a vector

dat <- read.fwf("foreign.for",widths=c(10,9,4,9,4,9,4,9,4), skip=4)
sum(data[,4])




