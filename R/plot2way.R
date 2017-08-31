plot2way=function(row.part,col.part,row.lab=NULL,col.lab=NULL)
{
xmin=min(row.part); xmax=max(row.part); xrange=diff(range(row.part))
XLIM=c(xmin-.4*xrange,xmax+.2*xrange)
ymin=min(col.part); ymax=max(col.part); yrange=diff(range(col.part))
YLIM=c(ymin-.2*yrange,ymax+.2*yrange)
plot(1,1,type="n",xlim=XLIM,ylim=YLIM,
  xlab="ROW PART",ylab="COL PART",main="ADDITIVE FIT PLOT")
for (i in 1:length(col.part))
{
  xy=cbind(row.part,col.part[i]+0*row.part)
  lines(xy,lwd=3,col="red")
}
for (i in 1:length(row.part))
{
  xy=cbind(row.part[i]+0*col.part,col.part)
  lines(xy,lwd=3,col="red")
}

fit=outer(row.part,col.part,"+")
FIT=pretty(c(fit),n=5)

for (j in 1:length(FIT))
  abline(a=FIT[j],b=-1,col="blue")

for (j in 1:length(FIT))
{
  xpos=XLIM[1]+.1*xrange
  text(xpos,FIT[j]-xpos,paste("FIT=",as.character(FIT[j])))
}

for (j in 1:length(row.part))
  text(row.part[j],max(col.part),row.lab[j],pos=3,srt=45)

for (j in 1:length(col.part))
  text(max(row.part),col.part[j],col.lab[j],pos=4)


}