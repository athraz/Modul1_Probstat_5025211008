# Modul1_Probstat_5025211008
Penjelasan Praktikum Modul 1 Probabilitas dan Statistik.  
Dibuat oleh Muhammad Razan Athallah (5025211008).

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
![Screenshot (179)](https://user-images.githubusercontent.com/96050618/195235840-75791b61-9bf0-4ce8-a7c0-69816fd47465.png)

- 1b. Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3.

Mean dapat dicari menggunakan fungsi `mean()` yang menghitung rata-rata dengan parameter berupa angka acak dari distribusi geometrik. Angka acak berupa data acak peluang kehadiran dalam acara vaksinasi, didapatkan dengan fungsi `rgeom()`.

```R
# 1b
mean(rgeom(n = 10000, prob = p) == x)
```
![Screenshot (180)](https://user-images.githubusercontent.com/96050618/195235850-d3cdc845-f6c6-4f56-8e0d-af94149ba7ae.png)

- 1c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

Poin a dan b cenderung selalu mengeluarkan hasil yang berbeda. Poin a mengeluarkan hasil distribusi geometrik dengan parameter yang bernilai tetap, didapatkan hasil poin a selalu tetap yaitu `0.1024`. Sedangkan poin b mengeluarkan rata-rata dari dari angka acak peluang kehadiran, didapatkan hasil poin b berubah-ubah seperti `0.1031`, `0.1048`, `0.1047`, dsb. Meskipun begitu, hasil dari poin b tidak terpaut jauh dari hasil poin a.

- 1d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama.

Histogram dibuat dengan menggunakan fungsi hist() dengan parameter berupa angka acak.
```R
# 1d
hist(rgeom(n = 10000, prob = p), xlab = "x", ylab = "Frekuensi", main = "Histogram Distribusi Geometrik")
```
![Screenshot (181)](https://user-images.githubusercontent.com/96050618/195235859-d14d534e-d368-4c01-bc1d-aa3c352688cf.png)

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
![Screenshot (182)](https://user-images.githubusercontent.com/96050618/195235942-3cf84958-f123-4879-b858-c4d7f86f4764.png)

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
![Screenshot (183)](https://user-images.githubusercontent.com/96050618/195236063-86a47912-64a9-47ae-a821-708575a52284.png)

- 2b. Gambarkan grafik histogram berdasarkan kasus tersebut.

Histogram distribusi binomial dapat dibuat menggunakan fungsi `hist()` dengan parameter angka acak.
```R
# 2b
hist(rbinom(x, n, prob = p), xlab =  "x", ylab = "Frekuensi", main = "Histogram Distribusi Binomial")
```
![Screenshot (184)](https://user-images.githubusercontent.com/96050618/195236075-f35dc2fb-911d-4598-8b2f-b3e50d011e6b.png)

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
![Screenshot (192)](https://user-images.githubusercontent.com/96050618/195242122-9f2240cf-2a72-4bde-b4a2-ced2cbf174ef.png)

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
![Screenshot (193)](https://user-images.githubusercontent.com/96050618/195242105-6696291c-7ef1-4530-b690-4e536a3c0295.png)

- 3b. Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365).

Histogram distribusi poisson dapat dibuat menggunakan fungsi `hist()` dengan parameter angka acak berupa peluang kelahiran 6 bayi selama setahun (n = 365).
```R
# 3b
hist(rpois(n = 356, lambda), xlab = "x", ylab = "Frekuensi", main = "Histogram binomial Poisson selama setahun (n = 365)")
```
![Screenshot (194)](https://user-images.githubusercontent.com/96050618/195242112-78ef2537-f26a-4e84-a806-e2a331b075a3.png)

- 3c. Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

Poin a mengeluarkan hasil distribusi poisson yang selalu tetap yaitu `0.12812`. Sedangkan poin b mengeluarkan peluang acak dari kelahiran bayi dalam satu tahun, didapatkan hasil poin b berubah-ubah. Meskipun begitu, selisih dari hasil poin a dan b cenderung tidak terlalu jauh. Hal ini disebabkan nilai dari poin a didapat dari range nilai poin b.

- 3d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

Rataan dan Varian dari distribusi poisson sama dengan lambda.
```R
# 3d
rataan = varian = lambda
rataan
varian
```
![Screenshot (195)](https://user-images.githubusercontent.com/96050618/195242115-d184c734-859e-4fc2-a037-82c2471f6808.png)

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
![Screenshot (196)](https://user-images.githubusercontent.com/96050618/195242116-e8441fde-54fc-43b0-bf6b-fa8355e3f738.png)

- 4b. Histogram dari Distribusi Chi-Square dengan 100 data random.

Histogram distribusi poisson dapat dibuat menggunakan fungsi `hist()` dengan parameter 100 angka acak.
```R
# 4b
hist(rchisq(n = 100, v), xlab = "x", ylab = "v", main = "Histogram distribusi Chi Square dengan 100 data random")
```
![Screenshot (197)](https://user-images.githubusercontent.com/96050618/195242118-6a654527-fd75-4375-929d-370e2f34c6b0.png)

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
![Screenshot (198)](https://user-images.githubusercontent.com/96050618/195242121-0522aa09-9dc9-4f10-b24a-60aad20231cd.png)

## Soal 5
> Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3).
- 5a. Fungsi Probabilitas dari Distribusi Exponensial 

Persoalan memberikan bilangan acak berdistribusi exponential, sehingga bisa digunakan fungsi `rexp()` dengan parameter banyak observasi dan lambda (rata-rata terjadinya sukses). Supaya mendapat hasil yang tetap untuk setiap percobaan, digunakan fungsi `set.seed()`.
```R
# 5a
lambda = 3
set.seed(1)
rexp(1, rate = lambda)
```
![Screenshot (199)](https://user-images.githubusercontent.com/96050618/195242991-9d140a59-95e9-4ab5-a218-37dcf8d59a8a.png)

- 5b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

Histogram dibuat dengan fungsi `hist()` dengan parameter angka acak. Angka acak didapatkan dari fungsi `rexp()` dengan parameter banyak observasi (10, 100, 1000, dan 10000) dan lambda.
```R
# 5b
hist(rexp(10, rate = lambda), main = "Histogram Distribusi Eksponensial dengan 10 bilangan acak")
hist(rexp(100, rate = lambda), main = "Histogram Distribusi Eksponensial dengan 100 bilangan acak")
hist(rexp(1000, rate = lambda), main = "Histogram Distribusi Eksponensial dengan 1000 bilangan acak")
hist(rexp(10000, rate = lambda), main = "Histogram Distribusi Eksponensial dengan 10000 bilangan acak")
```
![Screenshot (200)](https://user-images.githubusercontent.com/96050618/195244093-0ed7929b-6708-4028-9efb-ab1b4dda9930.png)
![Screenshot (201)](https://user-images.githubusercontent.com/96050618/195244085-d2ab24ff-f0b0-4769-bade-209ba5b39515.png)
![Screenshot (202)](https://user-images.githubusercontent.com/96050618/195244090-df149438-57d6-4f5f-a3ce-f09507094e0c.png)
![Screenshot (203)](https://user-images.githubusercontent.com/96050618/195244091-e44c0b40-18ab-4b80-ad38-f13563b26655.png)

- 5c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3

Rataan diperoleh menggunakan fungsi `mean()` dengan parameter angka acak. Angka acak didapatkan dari fungsi `rexp()` dengan parameter banyak observasi (100) dan lambda.
```R
rataan = mean(rexp(n = 100, rate = lambda))
rataan
```
Varian diperoleh dari hasi kuadrat fungsi `sd()` dengan parameter angka acak. Angka acak didapatkan dari fungsi `rexp()` dengan parameter banyak observasi (100) dan lambda.
```R
varian = sd(rexp(n = 100, rate = lambda))
varian = varian * varian
varian
```
![Screenshot (204)](https://user-images.githubusercontent.com/96050618/195244900-bec91e63-93b8-4e5b-b378-477e7035c62c.png)

## Soal 6
> Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8.
- 6a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik.

Data acak dari distribusi normal didapatkan dengan menggunakan fungsi `rnorm()` dengan parameter `n` (banyaknya data acak yang diinginkan), `mean` (rata-rata data acak yang diinginkan), dan `sd` (standar deviasi data acak yang diinginkan). Untuk mendapatkan nilai `x1` cukup dengan menggunakan fungsi `floor()` dari rata-rata data acak, begitu juga dengan `x2` cukup dengan menggunakan fungsi `ceiling()`. Z-score didapat dengan rumus data acak dikurangi dengan rata-rata data kemudian dibagi dengan standar deviasi data. Membuat plot dari Z-score dapat dengan menggunakan fungsi `plot()` dengan parameter variabel z-score.
```R
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
```
![Screenshot (205)](https://user-images.githubusercontent.com/96050618/195261695-cba212c0-c45c-4e46-8334-95758d26f16c.png)

- 6b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: **NRP_Nama_Probstat_{Nama Kelas}_DNhistogram**

Histogram dapat dibuat dengan menggunakan fungsi `hist()` dengan parameter data acak, breaks dan format penamaan.
```R
# 6b
hist(data, breaks = 50, main = "5025211008_Muhammad Razan Athallah_Probstat_A_DNhistogram")
```
![Screenshot (206)](https://user-images.githubusercontent.com/96050618/195261689-e3d56fe4-2ea7-4176-abaa-68016ed60efc.png)

- 6c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
Varian diperoleh dari kuadrat dari standar deviasi data.
```R
varian = sd(data)
varian = varian * varian
varian
```
![Screenshot (207)](https://user-images.githubusercontent.com/96050618/195261694-c297278a-1d86-4a35-b241-8530eab5a5c4.png)
