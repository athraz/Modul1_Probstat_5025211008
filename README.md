# Modul1_Probstat_5025211008

## Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 
- 1a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi?

Karena persoalan distribusi geometrik, maka dapat menggunakan fungsi `dgeom()` dengan parameter `x` (orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama) dan `p` (peluang menghadiri acara vaksinasi). 

```R
# 1a
x = 3
p = 0.2
dgeom(x, prob = p)
```


- 1b. Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3.

Mean dapat dicari menggunakan fungsi `mean()` yang menghitung rata-rata dengan parameter berupa angka acak dari distribusi geometrik. Angka acak berupa data acak peluang kehadiran dalam acara vaksinasi, didapatkan dengan fungsi `rgeom()`.

```R
# 1b
mean(rgeom(n = 10000, prob = p) == x)
```


- 1c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
- 1d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama.

Histogram dibuat dengan menggunakan fungsi hist() dengan parameter berupa angka acak.
```R
# 1c
hist(rgeom(n = 10000, prob = p), xlab = "x", ylab = "Frekuensi", main = "Histogram Distribusi Geometrik")
```

- 1e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

Rataan diperoleh dari satu dibagi peluang sukses.
```R
mean = 1 / p
mean
```
varian diperoleh dari peluang gagal dibagi dengan kuadrat dari peluang sukses.
```R
varian = (1 - p) / (p * p)
varian
```


## Soal 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2.
- 2a. Peluang terdapat 4 pasien yang sembuh.

Karena persoalan distribusi binomial, maka dapat menggunakan fungsi `dbinom()` dengan parameter `x` (banyak pasien yang sembuh), `n` (banyak pasien total), dan `p` (peluang sembuh).
```R
# 2a
n = 20
p = 0.2
x = 4
dbinom(x, n, prob = p)
```


- 2b. Gambarkan grafik histogram berdasarkan kasus tersebut.

Histogram distribusi binomial dapat dibuat menggunakan fungsi `hist()` dengan parameter angka acak.
```R
# 2b
hist(rbinom(x, n, prob = p), xlab =  "x", ylab = "Frekuensi", main = "Histogram Distribusi Binomial")
```


- 2c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.

Rataan diperoleh dari banyak data dikali dengan peluang sukses
```R
rataan = n * p
rataan
```
Varian diperoleh dari rataan dikali peluang gagal
```R
varian = n * p * (1 - p)
varian
```


## Soal 3
> Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari.
- 3a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

Karena persoalan distribusi poisson, maka dapat menggunakan fungsi `dpois()` dengan parameter `x` (banyak bayi yang akan lahir) dan `lambda (λ)` (rata-rata terjadinya sukses).
```R
# 3a
lambda = 0.45
x = 6
dpois(x, lambda)
```


- 3b. Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365).

Histogram distribusi poisson dapat dibuat menggunakan fungsi `hist()` dengan parameter angka acak berupa peluang kelahiran 6 bayi selama setahun (n = 365).
```R
# 3b
hist(rpois(n = 356, lambda), xlab = "x", ylab = "Frekuensi", main = "Histogram binomial Poisson selama setahun (n = 365)")
```


- 3c. Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
- 3d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

Rataan dan Varian dari distribusi poisson sama dengan lambda.
```R
# 3d
rataan = varian = lambda
rataan
varian
```


## Soal 4
> Diketahui nilai x = 2 dan v = 10. Tentukan:
- 4a. Fungsi Probabilitas dari Distribusi Chi-Square.

Karena Persoaalan distribusi Chi-Square, maka dapat menggunakan fungsi `hist()` dengan parameter `x` (jumlah data) dan `v` (derajat bebas).
```R
# 4a
x = 2
v = 10
dchisq(x, v)
```


- 4b. Histogram dari Distribusi Chi-Square dengan 100 data random.

Histogram distribusi poisson dapat dibuat menggunakan fungsi `hist()` dengan parameter 100 angka acak.
```R
# 4b
hist(rchisq(n = 100, v), xlab = "x", ylab = "v", main = "Histogram distribusi Chi Square dengan 100 data random")
```


- 4c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.

Rataan distribusi Chi-Square sama dengan v (derajat bebas).
```R
rataan = v
rataan
```
Vairan merupakan dua kali rataan.
```R
varian = 2 * v
varian
```


## Soal 5
> Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3).
- 5a. Fungsi Probabilitas dari Distribusi Exponensial 
- 5b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
- 5c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3

## Soal 6
> Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8.
- 6a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik.
- 6b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: **NRP_Nama_Probstat_{Nama Kelas}_DNhistogram**
- 6c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
