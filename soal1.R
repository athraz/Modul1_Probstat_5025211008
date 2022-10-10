x = 3
p = 0.2

# 1a
dgeom(x, prob = p)

# 1b
mean(rgeom(n = 10000, prob = p) == x)

# 1d
hist(rgeom(n = 10000, prob = p), main = "Histogram Distribusi Geometrik")

# 1e
rataan = 1 / p
rataan 
varian = (1 - p) / (p * p)
varian
