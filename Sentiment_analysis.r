library(dplyr)


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