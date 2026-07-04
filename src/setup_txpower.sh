#!/bin/bash
#
# setup_txpower.sh

setup_txpower(){
	local ns iface txpower

	ns="${1}"
	iface="${2}"
	txpower="${3}"

	ip netns exec "${ns}" iw dev "${iface}" set txpower fixed "${txpower}"
}
