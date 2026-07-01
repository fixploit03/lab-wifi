#!/bin/bash
#
# setup_ns.sh

setup_ns(){
	local ns phy

	ns="${1}"
	phy="${2}"

	ip netns exec "${ns}" ip link set lo up
	iw phy "${phy}" set netns name "${ns}"
}
