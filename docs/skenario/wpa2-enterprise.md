## Wi-Fi WPA2-Enterprise
Wi-Fi WPA2-Enterprise adalah jaringan Wi-Fi yang menggunakan enkripsi dengan autentikasi berbasis [802.1X/EAP](https://en.wikipedia.org/wiki/IEEE_802.1X), yaitu setiap client memiliki kredensial (username dan password, atau sertifikat) masing-masing yang diverifikasi oleh [RADIUS server](https://en.wikipedia.org/wiki/RADIUS). Berbeda dengan PSK, tidak ada satu password bersama yang dipakai oleh semua client.

### Karakteristik
- Setiap client punya kredensial unik (bukan password bersama)
- Membutuhkan RADIUS server untuk proses autentikasi
- Umum dipakai di perusahaan, kampus, atau instansi
- Trafik terenkripsi menggunakan [AES-CCMP](https://en.wikipedia.org/wiki/CCMP_(cryptography))
- Rentan terhadap serangan seperti [evil twin](https://en.wikipedia.org/wiki/Evil_twin_(wireless_networks)) atau [rogue AP](https://en.wikipedia.org/wiki/Rogue_access_point) jika client tidak memvalidasi sertifikat server dengan benar

### Tujuan
Pada lab ini, tujuannya adalah:
- Mengetahui SSID target
- Mengetahui metode EAP yang digunakan
- Menangkap kredensial pengguna
- Dapat terhubung dengan AP

> Selamat mencoba ^_^
