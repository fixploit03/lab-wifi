# Standar Wi-Fi (IEEE 802.11)
Wi-Fi berkembang melalui serangkaian standar yang ditetapkan oleh [IEEE (Institute of Electrical and Electronics Engineers)](https://www.ieee.org/) dalam keluarga **802.11**. Setiap generasi membawa peningkatan dari sisi **kecepatan**, **frekuensi**, **jangkauan**, dan **efisiensi jaringan**.

Berikut ini adalah standar-standarnya:

## 1. 802.11 (Legacy)
| Aspek | Keterangan |
|:--:|:--|
| Tahun Rilis | 1997 |
| Frekuensi | 2.4 GHz |
| Kecepatan | 2 Mbps |
| Status | Sudah tidak digunakan |

## 2. 802.11b
| Aspek | Keterangan |
|:--:|:--|
| Tahun Rilis | 1999 |
| Frekuensi | 2.4 GHz |
| Kecepatan | 11 Mbps |
| Catatan | Jangkauan luas, tapi rentan interferensi dari Bluetooth, microwave, dan perangkat lain di frekuensi 2.4 GHz |

## 3. 802.11a
| Aspek | Keterangan |
|:--:|:--|
| Tahun Rilis | 1999 |
| Frekuensi | 5 GHz |
| Kecepatan | 54 Mbps |
| Catatan | Interferensi lebih sedikit, tapi jangkauan lebih pendek dibanding frekuensi 2.4 GHz |

## 4. 802.11g
| Aspek | Keterangan |
|:--:|:--|
| Tahun Rilis | 2003 |
| Frekuensi | 2.4 GHz |
| Kecepatan | 54 Mbps |
| Catatan | Kompatibel mundur dengan 802.11b |

## 5. 802.11n/Wi-Fi 4
| Aspek | Keterangan |
|:--:|:--|
| Tahun Rilis | 2009 |
| Frekuensi | 2.4 GHz dan 5 GHz (dual-band) |
| Kecepatan | 600 Mbps |
| Fitur | [MIMO](https://en.wikipedia.org/wiki/MIMO) |

## 6. 802.11ac/Wi-Fi 5
| Aspek | Keterangan |
|:--:|:--|
| Tahun Rilis | 2013 |
| Frekuensi | 5 GHz |
| Kecepatan | 6.9 Gbps |
| Fitur | [MU-MIMO](https://en.wikipedia.org/wiki/Multi-user_MIMO), [Channel Bonding](https://en.wikipedia.org/wiki/Channel_bonding), [Modulasi 256-QAM](https://en.wikipedia.org/wiki/Quadrature_amplitude_modulation) |

## 7. 802.11ax/Wi-Fi 6 dan Wi-Fi 6E
| Aspek | Keterangan |
|:--:|:--|
| Tahun Rilis | 2019 |
| Frekuensi | 2.4 GHz, 5 GHz (Wi-Fi 6) dan 6 GHz (Wi-Fi 6E) |
| Kecepatan | 9.6 Gbps |
| Fitur | [OFDMA](https://en.wikipedia.org/wiki/Orthogonal_frequency-division_multiple_access), [Target Wake Time (TWT)](https://academy.nordicsemi.com/courses/wi-fi-fundamentals/lessons/lesson-1-wifi-fundamentals/topic/key-features-of-wifi-6/), [BSS Coloring](https://broadbandnow.com/guides/what-is-wi-fi-6), Modulasi 1024-QAM |

## 8. 802.11be/Wi-Fi 7
| Aspek | Keterangan |
|:--:|:--|
| Tahun Rilis | 2024 |
| Frekuensi | 2.4 GHz, 5 GHz, dan 6 GHz |
| Kecepatan | 46 Gbps |
| Fitur | [Multi-Link Operation (MLO)](https://www.fs.com/blog/80211-wireless-standards-explained-35.html), Channel Bonding 320 MHz, Modulasi 4096-QAM |

## Standar Keamanan Terkait
Selain standar transmisi data di atas, IEEE juga menetapkan standar tambahan yang khusus mengatur sisi keamanan jaringan Wi-Fi:

| Standar | Fungsi |
|:--:|:--|
| 802.11i | Dasar dari WPA2, menggunakan enkripsi berbasis [AES-CCMP](https://en.wikipedia.org/wiki/CCMP_(cryptography)) |
| 802.1X | Kerangka autentikasi berbasis [EAP](https://en.wikipedia.org/wiki/Extensible_Authentication_Protocol), dipakai di Wi-Fi Enterprise (WPA/WPA2/WPA3) |
| 802.11w | [PMF (Protected Management Frames)](https://www.wi-fi.org/beacon/philipp-ebbecke/protected-management-frames-enhance-wi-fi-network-security), melindungi frame manajemen dari serangan deauthentication. Sering juga disebut MFP (Management Frame Protection) di dokumentasi vendor seperti Cisco, tapi PMF adalah istilah resmi dari IEEE/Wi-Fi Alliance |
