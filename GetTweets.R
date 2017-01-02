# ---
# title: "Tweets CFE"
# author: "Aitor Ameztegui"
# date: "September 6, 2016"
# output: html_document
# ---
   
# Install "openssl" package
   pkg_url <- "https://cran.r-project.org/bin/macosx/mavericks/contrib/3.3/openssl_0.9.4.tgz"
   install.packages(pkg_url)
   
   install.packages(c("devtools", "rjson", "bit64", "httr"))
   install.packages("httpuv")

library(devtools)
install.packages("twitteR", dependencies=T)
library(twitteR)

consumerKey <- "r4XXel5ykYZEfTdGanqsmOGXi"
consumerSecret <- "Dk97BOArn2KFQCAPwxHXYMCzKF7s95ZL5HttQ0ikgvDB7atD2U"
setup_twitter_oauth(consumerKey, consumerSecret, access_token=NULL, access_secret=NULL)

## This is the code I used to retrieve the tweets.

## I started to ask the API for 5000 tweets but realized it wasn't
## enough to get them all, so I did a second call, that reached the
## limit on how far back it can get.

## To archive the data, I generated a RDS file, that I later exported
## to CSV and archived on figshare.

tweets <- searchTwitter("#CRincendios", n = 5000, 
                        since="2016-11-22", until="2016-11-30")
saveRDS(tweets, "./data/raw_tweets.rds")

dt_tweets <- twListToDF(tweets)
dt_tweets_part1 <- dt_tweets

tweets_part2 <- searchTwitter("#CRincendios", n = 5000, maxID = min(dt_tweets_part1$id))
saveRDS(tweets_part2, file = "./data/raw_tweets_part2.rds")
dt_tweets_part2 <- twListToDF(tweets_part2)

dt_tweets <- rbind(dt_tweets_part1, dt_tweets_part2)
saveRDS(dt_tweets, file = "./data/data_frame_all_tweets.rds")
dt_tweets <- readRDS(file = "./data/data_frame_all_tweets.rds")

write.csv(dt_tweets, file = "./data/cronica_tweets.csv")




