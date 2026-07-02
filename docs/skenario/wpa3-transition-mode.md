# Wi-Fi WPA3 Transition Mode

Wi-Fi WPA3 Transition Mode adalah jaringan Wi-Fi yang menjalankan WPA2 dan WPA3 secara bersamaan dalam satu SSID. Mode ini memungkinkan kompatibilitas dengan berbagai perangkat, di mana client lama yang belum mendukung WPA3 tetap dapat terhubung menggunakan metode PSK (WPA2), sementara client yang sudah mendukung WPA3 akan secara otomatis menggunakan autentikasi SAE.

## Karakteristik
- **Autentikasi**: PSK dan SAE (keduanya diaktifkan bersamaan)
- **Enkripsi**: AES-CCMP
- **Forward Secrecy**: Tergantung client, hanya berlaku untuk client yang terhubung menggunakan SAE
- **PMF**: 1 (opsional)
- **Kerentanan**: Downgrade attack, client WPA3 bisa dipaksa terhubung lewat jalur WPA2-PSK yang lebih lemah, sehingga rentan terhadap serangan offline seperti pada WPA2-Personal

## Tujuan
- Mengetahui SSID target
- Menangkap 4-way handshake
- Mengetahui password target
- Dapat terhubung dengan AP

> Selamat mencoba ^_^
