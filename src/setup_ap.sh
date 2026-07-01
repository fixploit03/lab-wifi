#!/bin/bash
#
# setup_ap.sh

setup_ap(){
	local ns config_hostapd

	ns="${1}"
	config_hostapd="${2}"

	ip netns exec "${ns}" hostapd -B "${config_hostapd}"
}
