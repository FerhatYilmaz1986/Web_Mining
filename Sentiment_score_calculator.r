library(openNLP)
library(openNLPdata)
library(NLP)

sentiment<-function(doc){
  doc = as.String(doc)
  doc = tolower(doc)