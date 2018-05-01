symplot <- function(d){
  n <- length(d)
  no <- floor((n + 1) / 2)
  sd <- sort(d)
  i <- 1 : no
  u <- sd[n + 1 - i] - median(d)
  v <- median(d) - sd[i]
  ggplot(data.frame(v, u),
         aes(v, u)) +
    geom_point() +
    geom_abline(color="red") +
    theme(plot.title = element_text(colour = "blue", 
                                    size = 18, 
              hjust = 0.5, vjust = 0.8, angle = 0)) +
    ggtitle("Symmetry Plot")
}