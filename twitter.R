#install & import "twitterR" library
install.packages("twitteR")

library("twitteR")

#install & import "RCurl" library
install.packages("RCurl")

library("RCurl")
library("xlsx")


#get keys from created Twitter app
api_key <- "WQZtgJV9WQIrZZtHm7rDS6X7S"
api_secret <- "t0yfGFVi1wExP0zYx4G9u9jW3HX9toMgDRfvAU0QfzP8VDthYF"
access_token <- "1052683410362253314-2Igz4wsCDyOTJ2hdaNu5kFVvYjNK6I"
access_token_secret <- "WcgKXIQrmSNU5hCwnAIv8bw6ci7sJ1Wqi0NCqqtJ6Fq4j"
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

#search twitter for datascience, n-twitts, lang - language
datascientist_tweets <- searchTwitter ("fitbit health care", n = 4000, lang = "en")
datascientist_tweets

tweetsdf <- twListToDF(datascientist_tweets)
write.csv(tweetsdf, file='~/Desktop/fitbithealthycare.csv', row.names = F)





