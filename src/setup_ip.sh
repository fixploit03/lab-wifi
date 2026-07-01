#!/bin/bash
#
# setup_ip.sh

setup_ip(){
	local ns ip_addr iface

	ns="${1}"
	ip_addr="${2}"
	iface="${3}"

	ip netns exec "${ns}" ip addr add "${ip_addr}" dev "${iface}"
}
