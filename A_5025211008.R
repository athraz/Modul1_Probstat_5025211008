# SOAL 1
# 1a
x = 3
p = 0.2
dgeom(x, prob = p)

# 1b
mean(rgeom(n = 10000, prob = p) == x)

# 1d
hist(rgeom(n = 10000, prob = p), xlab = "x", ylab = "Frekuensi", main = "Histogram Distribusi Geometrik")

# 1e
rataan = 1 / p
rataan 
varian = (1 - p) / (p * p)
varian


# SOAL 2
# 2a
n = 20
p = 0.2
x = 4
dbinom(x, n, prob = p)

# 2b
hist(rbinom(x, n, prob = p), xlab =  "x", ylab = "Frekuensi", main = "Histogram Distribusi Binomial")

# 2c
rataan = n * p
rataan
varian = n * p * (1 - p)
varian


# SOAL 3
# 3a
lambda = 4.5
x = 6
dpois(x, lambda)

# 3b
hist(rpois(n = 356, lambda), xlab = "x", ylab = "Frekuensi", main = "Histogram binomial Poisson selama setahun (n = 365)")

# 3d
rataan = varian = lambda
rataan
varian


# SOAL 4
# 4a
x = 2
v = 10
dchisq(x, v)

# 4b
hist(rchisq(n = 100, v), xlab = "x", ylab = "v", main = "Histogram distribusi Chi Square dengan 100 data random")

# 4c
rataan = v
rataan
varian = 2 * v
varian

# SOAL 5
# 5a
lambda = 3
set.seed(1)
rexp(1, rate = lambda)

# 5b
hist(rexp(10, rate = lambda), main = "Histogram Distribusi Eksponensial dengan 10 bilangan acak")
hist(rexp(100, rate = lambda), main = "Histogram Distribusi Eksponensial dengan 100 bilangan acak")
hist(rexp(1000, rate = lambda), main = "Histogram Distribusi Eksponensial dengan 1000 bilangan acak")
hist(rexp(10000, rate = lambda), main = "Histogram Distribusi Eksponensial dengan 10000 bilangan acak")

# 5c
set.seed(1)
rataan = mean(rexp(n = 100, rate = lambda))
rataan
varian = sd(rexp(n = 100, rate = lambda))
varian = varian * varian
varian


# SOAL 6
# 6a
n = 100
mean = 50
sd = 8
set.seed(1)
data = rnorm(n, mean, sd)
data

x1 = floor(mean(data))
x1
x2 = ceiling(mean(data))
x2
zscore = (data - mean(data)) / sd(data)
plot(zscore)

# 6b
hist(data, breaks = 50, main = "5025211008_Muhammad Razan Athallah_Probstat_A_DNhistogram")

#6c
varian = sd(data)
varian = varian * varian
varian
