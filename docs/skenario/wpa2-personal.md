# Wi-Fi WPA2-Personal

Wi-Fi WPA2-Personal adalah jaringan Wi-Fi yang menggunakan enkripsi dengan autentikasi berbasis PSK (Pre-Shared Key), yaitu satu password sama yang dipakai semua client. Jika PSK bocor, trafik yang terenkripsi bisa didekripsi oleh pihak yang mengetahuinya.

### Karakteristik
- **Autentikasi**: PSK
- **Enkripsi**: AES-CCMP
- **Forward Secrecy**: Tidak ada
- **PMF**: 0 (tidak aktif)
- **Kerentanan**: Dictionary attack / brute-force attack secara offline jika handshake berhasil ditangkap dan password yang digunakan lemah

### Tujuan

Pada lab ini, tujuannya adalah:
- Mengetahui SSID target
- Menangkap 4-way handshake
- Mengetahui password target
- Dapat terhubung dengan AP

> Selamat mencoba ^_^
