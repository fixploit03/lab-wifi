# lab-wifi

![](img/histori.jpg)

Lab virtual untuk simulasi **Wi-Fi hacking** menggunakan [mac80211_hwsim](https://www.kernel.org/doc/html/v6.9/networking/mac80211_hwsim/mac80211_hwsim.html).

## Persyaratan
- [Kali Linux](https://www.kali.org/)
- Akses root ([sudo](https://idwebhost.com/blog/sudo-adalah/))

## Setup Lab

```bash
sudo apt update
sudo apt install -y hostapd dnsmasq wpasupplicant isc-dhcp-client aircrack-ng iw macchanger network-manager iproute2 openssl iperf3 git
git clone https://github.com/fixploit03/lab-wifi
cd lab-wifi
```

## Instalasi Tools

```bash
sudo apt install -y kali-tools-802-11 kali-tools-wireless
```

Perintah di atas akan menginstal semua tools yang terdapat dalam metapackage [802-11](https://www.kali.org/tools/kali-meta/#kali-tools-802-11) dan [wireless](https://www.kali.org/tools/kali-meta/#kali-tools-wireless) Kali Linux.

## Penggunaan

```bash
sudo ./lab-wifi.sh start   # menjalankan lab
sudo ./lab-wifi.sh stop    # menghentikan lab
```

## Skenario Lab
Lab ini terdiri dari **5 Access Point (AP)** dengan konfigurasi keamanan yang berbeda-beda. Masing-masing AP memiliki **1 Station (STA)** yang terhubung. Berikut jenis keamanan yang digunakan:

| No | Jenis Keamanan | Keterangan | Detail |
|:--:|:--|:--|:--:|
| 1 | OPN | Tanpa enkripsi | [Lihat](https://github.com/fixploit03/lab-wifi/blob/main/docs/skenario/opn.md) |
| 2 | WPA2-Personal | PSK | [Lihat](https://github.com/fixploit03/lab-wifi/blob/main/docs/skenario/wpa2-personal.md) |
| 3 | WPA2-Enterprise | 802.1X | [Lihat](https://github.com/fixploit03/lab-wifi/blob/main/docs/skenario/wpa2-enterprise.md) |
| 4 | WPA3 Transition Mode | WPA2 + WPA3 | [Lihat](https://github.com/fixploit03/lab-wifi/blob/main/docs/skenario/wpa3-transition-mode.md) |
| 5 | WPA3-Personal | SAE | [Lihat](https://github.com/fixploit03/lab-wifi/blob/main/docs/skenario/wpa3-personal.md) |

## Lisensi
[MIT](LICENSE) - Rofi (Fixploit03)
