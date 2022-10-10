# Modul1_Probstat_5025211008

## Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 
- 1a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi?

Karena persoalan distribusi geometrik, maka dapat menggunakan fungsi `dgeom()` dengan parameter `x` (orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama) dan `p` (peluang menghadiri acara vaksinasi). 

```
# 1a
x = 3
p = 0.2
dgeom(x, prob = p)
```
