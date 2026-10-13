# Termux Lokasi Sendiri

Skrip satu-kali untuk menampilkan lokasi perangkat Android ini melalui Termux:API. Skrip meminta konfirmasi, lalu Android/Termux:API akan meminta izin lokasi. Koordinat tidak dikirim atau diunggah.

## Persyaratan

- Termux
- Aplikasi Termux:API yang cocok dari sumber yang sama dengan Termux
- Paket `termux-api`

## Instalasi

Di Termux, setelah autentikasi GitHub tersedia untuk repositori privat ini:

```sh
pkg update
pkg install git termux-api
git clone https://github.com/husein2014123/termux-lokasi-sendiri.git
cd termux-lokasi-sendiri
bash termux-lokasi-sendiri.sh
```

Saat diminta, izinkan akses lokasi hanya bila perangkat ini milik Anda atau Anda memiliki persetujuan pemiliknya.
