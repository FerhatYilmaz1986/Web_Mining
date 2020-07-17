library(openNLP)
library(openNLPdata)
library(NLP)
library(dplyr)
library(tidytext)
library(ggplot2)
library(wordcloud)
library(reshape2)

#Read data
df = read.csv('All-seasons.csv')

#Explore data
head(df)
tail(df)
summary(df)
length(unique(df$Character))
dplyr::count(df, df$Character, 'freq',sort = TRUE)%>%top_n(5)

# tokenize
tokens <- df %>% unnest_tokens(word, Line)
length(df$Line) # Total number of lines per charachter
length(tokens$word) #Total number of tokens

#Visualize tokenized words
wordcloud(tokens$word, max.words = 100, colors = brewer.pal(6,"Dark2"))