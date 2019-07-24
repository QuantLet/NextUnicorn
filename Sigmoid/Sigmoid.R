library(ggplot)

par(mar=c(5,5,5,5), mfrow = c(1,1))

sigmoid = function(x){
  y = 1/(1+exp(-x))
  return(y)
}

sigmoid2 = function(x){
  y = ifelse(x>5,1-0.05,1/(1+exp(-2*x)))
  return(y)
}

x = seq(-10,10,0.05)

pdf("dosecurve.pdf", height = 5, weidth = 10)
plot(x,sigmoid(x), type="l", ylab = "P(x)", cex.lab = 3,  cex.axis = 2.5)
curve(sigmoid2,x, add = TRUE, type="l", lty=2)
points(c(-5,-2,-9,-0.2,0.8,-0.6,1,5,7,8,9,10),c(0,0,0,0,0,1,1,0.97,0.98,1,1,0))
abline(v=0,col="red")
abline(h=0,col="blue")
abline(h=1,col="blue")

dev.off()
