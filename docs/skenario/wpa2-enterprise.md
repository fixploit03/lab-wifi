## Wi-Fi WPA2-Enterprise
Wi-Fi WPA2-Enterprise adalah jaringan Wi-Fi yang terenkripsi dengan autentikasi berbasis [802.1X/EAP](https://en.wikipedia.org/wiki/IEEE_802.1X). Setiap client memiliki kredensial masing-masing (username dan password, atau sertifikat) yang diverifikasi oleh [RADIUS server](https://en.wikipedia.org/wiki/RADIUS), berbeda dengan PSK yang menggunakan satu password bersama untuk semua client.

### Karakteristik
- **Autentikasi**: 802.1X/EAP (kredensial unik per client, diverifikasi RADIUS server)
- **Enkripsi**: AES-CCMP
- **Forward Secrecy**: Tidak
- **PMF**: 0 (tidak aktif)
- **Kerentanan**: Evil twin / rogue AP jika client tidak memvalidasi sertifikat server dengan benar

### Tujuan
Pada lab ini, tujuannya adalah:
- Mengetahui SSID target
- Mengetahui metode EAP yang digunakan
- Menangkap kredensial pengguna
- Dapat terhubung dengan AP

> Selamat mencoba ^_^
