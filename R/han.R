han <- function (sequence) {
  smooth = stats::filter(sequence, c(1, 2, 1)/4)
  smooth[c(1, length(sequence))] = sequence[c(1, length(sequence))]
  return(smooth)
}
