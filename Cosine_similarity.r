library(RTextTools)
library(tm)

cosinesim<-function(query,document){
  corpus<-create_matrix(documents,removeStopwords = T,stemWords = T)
  corpus<- as.matrix(corpus)
  q1matrix<-create_matrix(q1,originalMatrix = corpus,removeStopwords = T,stemWords = T)
  q1matrix<-as.matrix(q1matrix)
  cosine = c()
  for (i in 1:3){
  cosine_sim = crossprod(corpus[i,],q1matrix[1,])/sqrt(crossprod(corpus[i,])*crossprod(q1matrix[1,]))
  cosine = append(cosine,cosine_sim)
  }
  return(cosine)
}