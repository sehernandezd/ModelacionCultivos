chapmr<- function (x,asin,b,c) asin*(1-exp(-b*x)^c)

curve(chapmr(x,asin=100,b=0.15,c=3),from=0,to=50,ylab="y")
y=chapmr(0:50,asin=199,b=0.15,c=3)
data=data.frame(x=0:50,y)
library(manipulate)
manipulate(
  plot(data,xlim=c(x.min,x.max),ylim=c(0,asin),type=tipo,axes=axes,ann=label,col=color),
  x.min=slider(0,10),
  x.max=slider(40,50),
  c=slider(1,15),
  b=slider(0,1),
  asin=slider(50,1000),
  tipo= picker("p","l","b","c","o","h","s","S","n"),
  axes=checkbox(TRUE, "dibujar ejes"),
  label=checkbox(FALSE, "dibujar ejes "),
  color=picker("red","blue","green")
)
