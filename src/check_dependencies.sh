#!/bin/bash
#
# check_dependencies.sh

check_dependencies() {
	local dependencies missing cmd i pkg

	dependencies=("hostapd" "dnsmasq" "wpa_supplicant" "dhclient" "iperf3")
	missing=()

	for cmd in "${dependencies[@]}"; do
		if ! command -v "${cmd}" &> /dev/null; then
			missing+=("${cmd}")
		fi
	done

	if [[ "${#missing[@]}" -eq 0 ]]; then
		:
	else
		apt update
		for i in "${missing[@]}"; do
			case "${i}" in
				dhclient)
					pkg="isc-dhcp-client"
					;;
				wpa_supplicant)
					pkg="wpasupplicant"
					;;
				*)
					pkg="${i}"
					;;
			esac
			apt install -y "${pkg}"
		done
	fi
}
