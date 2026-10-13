#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

# Pengambil lokasi satu kali untuk perangkat ini.
# Tidak mengirim, mengunggah, atau menyimpan koordinat secara otomatis.

if ! command -v termux-location >/dev/null 2>&1; then
  echo "Perintah termux-location tidak ditemukan." >&2
  echo "Pasang Termux:API dari sumber yang sama dengan Termux, lalu jalankan:" >&2
  echo "  pkg install termux-api" >&2
  exit 1
fi

echo "Permintaan lokasi akan ditampilkan oleh Android/Termux:API."
echo "Izinkan hanya jika ini perangkat Anda atau Anda memiliki izin pemiliknya."
echo "Koordinat hanya ditampilkan di terminal; skrip tidak mengirimkannya ke mana pun."
printf "Lanjutkan? [y/N] "
read -r answer
case "$answer" in
  y|Y|yes|YES|Ya|ya) ;;
  *) echo "Dibatalkan."; exit 0 ;;
esac

# GPS biasanya lebih akurat tetapi dapat memerlukan waktu dan izin lokasi.
termux-location -p gps -r once
