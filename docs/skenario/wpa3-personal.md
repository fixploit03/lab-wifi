## Wi-Fi WPA3-Personal
Wi-Fi WPA3-Personal adalah jaringan Wi-Fi yang menggunakan enkripsi dengan autentikasi berbasis [SAE (Simultaneous Authentication of Equals)](https://en.wikipedia.org/wiki/Simultaneous_Authentication_of_Equals), pengganti metode PSK pada WPA2. Meski sama-sama memakai satu password bersama untuk semua client, SAE memakai pertukaran kunci [Diffie-Hellman](https://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange) sehingga tidak bisa didekripsi secara offline hanya dengan menangkap proses handshake-nya.

### Karakteristik
- **Autentikasi**: SAE
- **Enkripsi**: AES-CCMP-128 / AES-GCMP-256
- **Forward Secrecy**: Ya
- **PMF**: Mandatory (wajib)
- **Kerentanan**: Hanya bisa diserang lewat online brute-force (lambat & mudah terdeteksi)

### Tujuan
Pada lab ini, tujuannya adalah:
- Mengetahui SSID target
- Mengetahui password target
- Dapat terhubung dengan AP

> Selamat mencoba ^_^
