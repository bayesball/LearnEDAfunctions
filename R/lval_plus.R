lval_plus <- function(df, variate, group_var) {
  if(nargs() == 2){
    variate <- enquo(variate)
    df %>%
      summarise(Q_LO = quantile(!! variate, 0.25),
                Q_HI = quantile(!! variate, 0.75),
                M = median(!! variate),
                df = Q_HI - Q_LO,
                Fence_HI = Q_HI + 1.5 * df,
                Fence_LO = Q_LO - 1.5 * df) -> S 
    mutate(df, 
          Fence_LO = S$Fence_LO,
          Fence_HI = S$Fence_HI,
          OUT = !! variate > S$Fence_HI | 
                !! variate < S$Fence_LO) 
  } else {
  group_var <- enquo(group_var)
  variate <- enquo(variate)
  df %>%
    group_by(!! group_var) %>%
    summarise(Q_LO = quantile(!! variate, 0.25),
              Q_HI = quantile(!! variate, 0.75),
              M = median(!! variate),
              df = Q_HI - Q_LO,
              Fence_HI = Q_HI + 1.5 * df,
              Fence_LO = Q_LO - 1.5 * df) %>% 
    select(!! group_var, Fence_LO, Fence_HI)  %>% 
    inner_join(df) %>% 
    mutate(OUT = !! variate > Fence_HI | !! variate < Fence_LO)}
}
