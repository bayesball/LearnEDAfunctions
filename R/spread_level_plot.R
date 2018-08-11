spread_level_plot <- function(df, variate, group_var) {
  group_var <- enquo(group_var)
  variate <- enquo(variate)
  df %>%
    group_by(!! group_var) %>%
    summarise(Q_LO = quantile(!! variate, 0.25),
              Q_HI = quantile(!! variate, 0.75),
              M = median(!! variate),
              df = Q_HI - Q_LO,
              log.M = log10(M),
              log.df = log10(df)) %>% 
    select(!! group_var, M, df, log.M, log.df) -> S
  p <- ggplot(S, aes(log.M, log.df, label = !! group_var)) +
    geom_point(size = 3) +
    geom_smooth(method = "lm", se = FALSE, 
                color = "red") +
    xlab("Log Median") + ylab("Log df") +
    geom_label() +
    ggtitle(paste("Spread vs Level Plot: Slope =", 
                  round(lm(log.df ~ 0 + log.M, data = S)$coef, 2))) +
    theme(
      plot.title = element_text(
        colour = "blue",
        size = 16,
        hjust = 0.5,
        vjust = 0.8,
        angle = 0
      )
    )            
  print(p)
  S
}

