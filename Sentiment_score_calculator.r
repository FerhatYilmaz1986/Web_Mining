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
  #Break into tokens
  word_token_annotator<-Maxent_Word_Token_Annotator(probs=TRUE)
  a2 <- annotate(doc, word_token_annotator, a1)
  a3 <- subset(a2, type == "word")
  doc[a3]
  # Set the folder that has files as a working directory, so did not use path
  poslist = readLines('positive-words.txt')
  neglist = readLines('negative-words.txt')
  countpos = 0
  countneg = 0
  for (i in range(1:length(doc[a3]))){
    if (doc[a3][i] %in% poslist){
      countpos = countpos+1
    }
    if (doc[a3][i] %in% neglist){
      countneg = countneg+1