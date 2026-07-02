# Wi-Fi WPA3-Personal

Wi-Fi WPA3-Personal adalah jaringan Wi-Fi yang menggunakan autentikasi berbasis [SAE (Simultaneous Authentication of Equals)](https://en.wikipedia.org/wiki/Simultaneous_Authentication_of_Equals), sebagai pengganti metode PSK pada WPA2. Meskipun masih menggunakan satu password bersama untuk semua client, SAE memanfaatkan pertukaran kunci [Diffie-Hellman](https://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange) sehingga password tidak dapat di-crack secara offline hanya dengan menangkap proses handshake.

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
