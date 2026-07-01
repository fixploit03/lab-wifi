#!/bin/bash
#
# gen_traffic.sh

gen_traffic(){
	local ap_ns sta_ns ap_ip bitrate

	ap_ns="${1}"
	sta_ns="${2}"
	ap_ip="${3}"
	bitrate="${4:-50K}"

	ip netns exec "${ap_ns}" iperf3 -s -D -B "${ap_ip}" &> /dev/null
	sleep 1
	ip netns exec "${sta_ns}" iperf3 -c "${ap_ip}" -u -b "${bitrate}" -t 0 -i 0 &> /dev/null &
}
