# Sentiment analysis for 401K plans
library(syuzhet)
library(lubridate)
library(ggplot2)
library(scales)
library(reshape2)
library(dplyr)

# Read file
mf <- read.csv(file.choose(), header = T)
tweets <- iconv(mf$text, to = 'utf-8-mac')

# Obtain sentiment scores
s <- get_nrc_sentiment(tweets)
head(s)
tweets[15]
get_nrc_sentiment('like')

# Bar plot
barplot(colSums(s),
        las = 2,
        col = rainbow(10),
        ylab = 'Count',
        main = 'Sentiment Scores for Medicare Tweets')


