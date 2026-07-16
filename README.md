# lab-wifi

![](https://github.com/fixploit03/lab-wifi/blob/main/img/histori.jpg)

## Daftar Isi
- [Apa itu lab-wifi?](#apa-itu-lab-wifi)
- [Topologi Lab](#topologi-lab)
- [Skenario Lab](#skenario-lab)
- [Cara Menggunakan Lab](#cara-menggunakan-lab)
- [Disclaimer](#disclaimer)
- [Lisensi](#lisensi)

## Apa itu lab-wifi?
Lab virtual untuk simulasi Wi-Fi hacking menggunakan [mac80211_hwsim](https://docs.kernel.org/6.1/networking/mac80211_hwsim/mac80211_hwsim.html).

## Topologi Lab

![](https://github.com/fixploit03/lab-wifi/blob/main/img/topologi.jpg)

## Skenario Lab
| No | Jenis Keamanan | Keterangan |
|:--:|:--|:--|
| 1 | OPN | Tanpa enkripsi |
| 2 | WPA2-Personal | PSK |
| 3 | WPA2-Enterprise | 802.1X |
| 4 | WPA3 Transition Mode | WPA2 + WPA3 |
| 5 | WPA3-Personal | SAE |

## Cara Menggunakan Lab
1. Download semua file `.ova` yang ada di halaman [Release](https://github.com/fixploit03/lab-wifi/releases).
2. Gabungkan menjadi satu:
   
   ```bash
   cat lab-wifi.ova.part-* > lab-wifi.ova
   ```
3. Import ke VirtualBox:
   - Buka VirtualBox → **File → Import Appliance**
   - Pilih file `lab-wifi.ova` hasil gabungan tadi
   - Ikuti wizard import sampai selesai
4. Jalankan VM:
   - Username: `lab-wifi`
   - Password: `lab-wifi`

## Disclaimer
Lab ini dibuat **semata-mata untuk tujuan pembelajaran, penelitian, dan meningkatkan kesadaran (awareness) terhadap keamanan jaringan Wi-Fi**. 

## Lisensi
Project ini dirilis di bawah [MIT License](LICENSE).
