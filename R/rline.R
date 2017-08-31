 rline=function (x, y, iter = 1) 
{
    rline0 = function(x, y) {
        n = length(x)
        k = n - floor(n/3) * 3
        if (k == 0) 
            n.gp = c(n, n, n)/3
        if (k == 1) {
            l = (n - 1)/3
            n.gp = c(l, l + 1, l)
        }
        if (k == 2) {
            l = (n - 2)/3
            n.gp = c(l + 1, l, l + 1)
        }
        left = 1:n.gp[1]
        center = (n.gp[1] + 1):(n.gp[1] + n.gp[2])
        right = (n.gp[1] + n.gp[2] + 1):n
        sort.x = sort(x, index.return = TRUE)
        sort.y = y[sort.x$ix]
        x.med = c(median(sort.x$x[left]), median(sort.x$x[center]), 
            median(sort.x$x[right]))
        y.med = c(median(sort.y[left]), median(sort.y[center]), 
            median(sort.y[right]))
        b = (y.med[3] - y.med[1])/(x.med[3] - x.med[1])
        bR = (y.med[3] - y.med[2])/(x.med[3] - x.med[2])
        bL = (y.med[2] - y.med[1])/(x.med[2] - x.med[1])
        a = mean(y.med - b * (x.med - x.med[2]))
        return(list(a = a, b = b, xC = x.med[2], bL = bL, bR = bR,
            summary.points=cbind(x.med, y.med)))
    }
    residual = y
    sum.points=rline0(x, y)$summary.points
    a = 0
    b = 0
    bL = 0
    bR = 0
    for (j in 1:iter) {
        fit = rline0(x, residual)
        a = a + fit$a
        b = b + fit$b
        if (j == 1) {
            bR = fit$bR
            bL = fit$bL
        }
        residual = y - (a + b * (x - fit$xC))
    }
    return(list(a = a, b = b, xC = fit$xC, half.slope.ratio = bR/bL, 
        residual = residual, 
        spoints.x=sum.points[,1],spoints.y=sum.points[,2]))
}
