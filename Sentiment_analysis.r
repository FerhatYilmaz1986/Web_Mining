#Read data
df = read.csv('All-seasons.csv')

#Explore data
head(df)
tail(df)
summary(df)
length(unique(df$Character))