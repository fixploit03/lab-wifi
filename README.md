# lab-wifi

![](img/histori.jpg)

Lab virtual untuk simulasi **Wi-Fi hacking** menggunakan [mac80211_hwsim](https://www.kernel.org/doc/html/v6.9/networking/mac80211_hwsim/mac80211_hwsim.html).

## Persyaratan

* [Kali Linux](https://www.kali.org/)
* Akses root ([sudo](https://idwebhost.com/blog/sudo-adalah/))

## Setup Lab

```bash
sudo apt update
sudo apt install -y hostapd dnsmasq wpasupplicant isc-dhcp-client aircrack-ng iw macchanger network-manager iproute2 openssl iperf3 git
git clone https://github.com/fixploit03/lab-wifi
cd lab-wifi
```

## Install Tools

```bash
sudo apt install -y kali-tools-802-11 kali-tools-wireless
```

## Penggunaan

```bash
sudo ./lab-wifi.sh start   # menjalankan lab
sudo ./lab-wifi.sh stop    # menghentikan lab
```

## Lisensi

[MIT](LICENSE) - Rofi (Fixploit03)
