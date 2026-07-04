#!/bin/bash
###############################################################################
#  ___      __   __  _     _  __   __
# |   |    |  | |  || | _ | ||  | |  |
# |   |    |  |_|  || || || ||  |_|  |
# |   |    |       ||       ||       |
# |   |___ |       ||       ||       |
# |       | |     | |   _   ||   _   | lab-wifi.sh
# |_______|  |___|  |__| |__||__| |__| By: Rofi (Fixploit03)
#
###############################################################################
#
# MIT License
#
# Copyright (c) 2026 fixploit03
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
###############################################################################

if [[ "${EUID}" -ne 0 ]]; then
	echo "Run as root!"
	exit 1
fi

source src/change_mac.sh
source src/check_dependencies.sh
source src/cleanup_ns.sh

usage(){
	echo "Usage: sudo $0 {start|stop}"
	exit 1
}

if [[ "${#}" -ne 1 ]]; then
	usage
fi

start_lab(){
	echo "[*] Starting the lab..."
	check_dependencies
	modprobe mac80211_hwsim radios=12
	cleanup_ns start
	airmon-ng check kill

	change_mac wlan0
	change_mac wlan1
	bash ap/opn.sh
	bash ap/wpa2-personal.sh
	bash ap/wpa2-enterprise.sh
	bash ap/wpa3-transition.sh
	bash ap/wpa3-personal.sh
}

stop_lab(){
	echo "[*] Stopping the lab"
	killall hostapd dnsmasq wpa_supplicant dhclient iperf3
	cleanup_ns
	modprobe -r mac80211_hwsim
	systemctl restart NetworkManager
}

case "${1}" in
	start)
		start_lab
		;;
	stop)
		stop_lab
		;;
	*)
		usage
		;;
esac
