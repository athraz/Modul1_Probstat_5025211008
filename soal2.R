n = 20
p = 0.2
x = 4

# 2a
dbinom(x, n, prob = p)

# 2b
hist(rbinom(x, n, prob = p), xlab =  "x", ylab = "Frekuensi", main = "Histogram Distribusi Binomial")

# 2c
rataan = n * p
rataan
varian = n * p * (1 - p)
varian
