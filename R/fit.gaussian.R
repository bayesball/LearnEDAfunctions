fit.gaussian=function(data,bins,g.mean,g.sd)
{
# bin data
h=hist(data,breaks=bins,plot=FALSE)

# compute probabilities of bins
N=length(bins)
probs=pnorm(bins[2:N],g.mean,g.sd)-pnorm(bins[1:(N-1)],g.mean,g.sd)

# compute expected bins
expected=probs*length(data)

# compute simple rootogram residuals
residual=sqrt(h$counts)-sqrt(expected)

return(list(counts=h$counts,probs=probs,expected=expected,
  residual=residual))
}