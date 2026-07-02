# Wi-Fi WPA3-Personal

Wi-Fi WPA3-Personal adalah jaringan Wi-Fi yang terenkripsi dengan autentikasi berbasis SAE (Simultaneous Authentication of Equals), pengganti metode PSK pada WPA2. Meski sama-sama menggunakan satu password bersama untuk semua client, SAE memanfaatkan pertukaran kunci Diffie-Hellman sehingga trafik tidak bisa didekripsi secara offline hanya dengan menangkap proses handshake-nya.

## Karakteristik
- **Autentikasi**: SAE
- **Enkripsi**: AES-CCMP-128 / AES-GCMP-256
- **Forward Secrecy**: Ya
- **PMF**: 2 (wajib)
- **Kerentanan**: Hanya bisa diserang lewat online brute-force (lambat & mudah terdeteksi)

## Tujuan
- Mengetahui SSID target
- Mengetahui password target
- Dapat terhubung dengan AP

> Selamat mencoba ^_^
