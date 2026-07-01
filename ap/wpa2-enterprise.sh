#!/bin/bash
#
# wpa2-enterprise.sh

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
base_dir="$(cd "${script_dir}/.." && pwd)"
source "${base_dir}/src/change_mac.sh"
source "${base_dir}/src/detect_phy.sh"
source "${base_dir}/src/setup_ns.sh"
source "${base_dir}/src/setup_ip.sh"
source "${base_dir}/src/setup_ap.sh"
source "${base_dir}/src/setup_dhcp_server.sh"
source "${base_dir}/src/setup_sta.sh"
source "${base_dir}/src/gen_traffic.sh"

ap_iface="wlan6"
sta_iface="wlan7"
ap_ns="ap-wpa2-enterprise"
sta_ns="sta-wpa2-enterprise"
ip_addr="10.10.100.1/24"
hostapd_conf="${base_dir}/conf/wpa2-enterprise/hostapd.conf"
dnsmasq_conf="${base_dir}/conf/wpa2-enterprise/dnsmasq.conf"
wpa_supplicant_conf="${base_dir}/conf/wpa2-enterprise/wpa_supplicant.conf"
priv_key=/etc/hostapd/server.key
pub_key=/etc/hostapd/server.pem
eap_user=/etc/hostapd/eap_user

if [[ ! -f "${priv_key}" || ! -f "${pub_key}" ]]; then
	openssl req -x509 -newkey rsa:2048 -keyout "${priv_key}" -out "${pub_key}" -days 3650 -nodes -subj "/CN=lab-wifi"
fi

if [[ ! -f "${eap_user}" ]]; then
	cat << EOF > "${eap_user}"
* PEAP
"fixploit03"  MSCHAPV2  "10101010"  [2]
EOF
fi

change_mac "${ap_iface}"
change_mac "${sta_iface}"
detect_phy "${ap_iface}"
ap_phy="${phy}"
detect_phy "${sta_iface}"
sta_phy="${phy}"
setup_ns "${ap_ns}" "${ap_phy}"
setup_ns "${sta_ns}" "${sta_phy}"
setup_ip "${ap_ns}" "${ip_addr}" "${ap_iface}"
setup_ap "${ap_ns}" "${hostapd_conf}"
setup_dhcp_server "${ap_ns}" "${dnsmasq_conf}"
setup_sta "${sta_ns}" "${sta_iface}" "${wpa_supplicant_conf}"
gen_traffic "${ap_ns}" "${sta_ns}" "10.10.100.1"
