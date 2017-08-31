half.slope.ratio=function (sx, sy, px, py) 
{
    tx = (sx^px - 1)/px
    ty = (sy^py - 1)/py
    b.left = diff(ty[1:2])/diff(tx[1:2])
    b.right = diff(ty[2:3])/diff(tx[2:3])
    return(b.right/b.left)
}

