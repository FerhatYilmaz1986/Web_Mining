linear_regression = function(x,y){
 b1 = (length(x)*sum(x*y)-sum(x)*sum(y))/(length(x)*sum(x^2)-(sum(x))^2)
 b0 = (sum(y)-b1*sum(x))/length(x)
 return(c(b0,b1))
}

squarederror<-function(b0,b1,x,y)