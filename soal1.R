x = 3
p = 0.2

# 1a
dgeom(x, prob = p)

# 1b
mean(rgeom(n = 10000, prob = p) == x)

# 1d
library (dplyr)
library (ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Gagal = ifelse(x == n, "x = 3", "x lainnya")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Gagal)) +
  geom_col() +
  geom_text(
    aes(label = round(prob, 2), y = prob + 0.005),
    position = position_dodge(1),
    size = 4,
    vjust = 0
  ) +
  labs(title= "Peluang x = 3 gagal sebelum sukses pertama", 
       x = "Gagal sebelum sukses pertama", y = "Peluang") 

# 1e
rataan = 1 / p
rataan 
varian = (1 - p) / (p * p)
varian
