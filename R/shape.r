shape_palette <- function(solid = TRUE) {
  if (solid) {
    c(16, 17, 15, 3, 7, 8)[seq_len(n)]
  } else {
    c(1, 2, 0, 3, 7, 8)[seq_len(n)]
  }
}
