library(RTextTools)
library(tm)

cosinesim<-function(query,document){
  corpus<-create_matrix(documents,removeStopwords = T,stemWords = T)
  corpus<- as.matrix(corpus)
  q1matrix<-create_matrix(q1,originalMatrix = corpus,removeStopwords = T,stemWords = T)