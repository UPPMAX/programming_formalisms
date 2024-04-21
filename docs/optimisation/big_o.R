create_big_o_example <- function(n = seq(0, 100)) {
  t_wide <- tibble::tibble(n = n)
  t_wide$a <- 10 + log10(t_wide$n + 0.1)
  t_wide$b <- t_wide$n
  t_wide$c <- 0.001 * (t_wide$n ^ 2)
  t_wide$total <- t_wide$a + t_wide$b + t_wide$c
  t <- tidyr::pivot_longer(t_wide, cols = c("a", "b", "c", "total"))
  colnames(t) <- c("n", "sub", "t")
  t
}
t <- create_big_o_example(n = seq(0, 100))
ggplot2::ggplot(t, ggplot2::aes(x = n, y = t, color = sub)) + 
  ggplot2::geom_line(linewidth = 4) + 
  ggplot2::theme(text = ggplot2::element_text(size = 20))
ggplot2::ggsave(filename = "big_o_100.png", width = 7, height = 7)

t <- create_big_o_example(n = seq(0, 500))
ggplot2::ggplot(t, ggplot2::aes(x = n, y = t, color = sub)) + 
  ggplot2::geom_line(linewidth = 4) + 
  ggplot2::theme(text = ggplot2::element_text(size = 20))
ggplot2::ggsave(filename = "big_o_500.png", width = 7, height = 7)
