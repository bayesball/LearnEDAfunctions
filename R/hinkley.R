hinkley=function (d) 
{
    md = median(d)
    mn = mean(d)
    s = diff(quantile(d, probs = c(0.25, 0.75)))
    H=(mn - md)/s
    names(H)="h"
    H
}
