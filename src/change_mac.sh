#!/bin/bash
#
# change_mac.sh

change_mac(){
	local iface

	iface="${1}"

	ip link set "${iface}" down
	macchanger -r "${iface}"
	ip link set "${iface}" up
}
