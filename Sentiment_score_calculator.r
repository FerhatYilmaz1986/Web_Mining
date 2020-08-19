library(openNLP)
library(openNLPdata)
library(NLP)

sentiment<-function(doc){
  doc = as.String(doc)
  doc = tolower(doc)
  #Break into sentences
  sent_token_annotator <- Maxent_Sent_Token_Annotator(probs=TRUE)
  a1<-annotate(doc,sent_token_annotator)
  doc[a1]