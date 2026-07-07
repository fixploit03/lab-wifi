# Tahapan Hacking Wi-Fi
Sebelum melakukan pengujian keamanan Wi-Fi, seorang pentester perlu mengikuti serangkaian tahapan agar prosesnya berjalan secara sistematis dan hasilnya akurat. Berikut adalah tahapan-tahapan tersebut:

## 1. Preparation
Tahap persiapan sebelum pengujian, meliputi:
- Menyiapkan izin
- Menentukan target
- Menyiapkan tools yang dibutuhkan

## 2. Reconnaissance
Tahap pengumpulan informasi mengenai target pengujian, seperti:
- `SSID`: Nama Wi-Fi
- `BSSID`: MAC address dari AP
- `STA`: Client yang terhubung ke AP
- dan lain-lain

## 3. Vulnerability Analysis
Tahap identifikasi celah keamanan pada target, seperti:
- Jenis enkripsi yang digunakan oleh AP (OPN/WEP/WPA)
- Status WPS, aktif atau tidak
- Kesalahan konfigurasi

## 4. Exploitation
Tahap pengujian yang dilakukan setelah celah keamanan berhasil diidentifikasi.

## 5. Post Exploitation
Tahap lanjutan setelah berhasil mendapatkan akses ke jaringan target, meliputi:
- Kemungkinan pivoting ke sistem lain
- Ada tidaknya data atau informasi sensitif yang dapat diakses
- Sejauh mana akses yang berhasil diperoleh di dalam jaringan tersebut

## 6. Reporting
Tahap penyusunan laporan hasil temuan beserta rekomendasi perbaikan.
