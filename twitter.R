#install & import "twitterR" library
install.packages("twitteR")

#install & import "RCurl" library
install.packages("RCurl")

#libraries
library("twitteR")
library("RCurl")
library("xlsx")

#get keys from created Twitter app
api_key <- "XXXX"
api_secret <- "XXXX"
access_token <- "XXXX"
access_token_secret <- "XXXX"
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

#search twitter for datascience, n-twitts, lang - language
tweets <- searchTwitter ("fitbit health care", n = 4000, lang = "en")

#display the results
tweets

#save tweets to csv
tweetsdf <- twListToDF(tweets)
write.csv(tweetsdf, file='~/Desktop/fitbithealthycare.csv', row.names = F)





