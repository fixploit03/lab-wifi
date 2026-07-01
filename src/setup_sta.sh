#!/bin/bash
#
# stup_sta.sh

setup_sta(){
	local ns iface config_wpa_supplicant

	ns="${1}"
	iface="${2}"
	config_wpa_supplicant="${3}"

	ip netns exec "${ns}" wpa_supplicant -B -i "${iface}" -c "${config_wpa_supplicant}" -qq
	sleep 1
	ip netns exec "${ns}" dhclient "${iface}"
}
