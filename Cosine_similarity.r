library(RTextTools)
library(tm)

cosinesim<-function(query,document){
  corpus<-create_matrix(documents,removeStopwords = T,stemWords = T)