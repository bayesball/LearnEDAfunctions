symplot=function(d)
{
n=length(d)
no=floor((n+1)/2)
sd=sort(d)
i=1:no
u=sd[n+1-i]-median(d)
v=median(d)-sd[i]
plot(v,u,pch=19,cex=1.2)
abline(0,1,lwd=3,col="red")
title("Symmetry Plot")
}