#!/bin/bash
#
# detect_phy.sh

detect_phy(){
	local iface

	iface="${1}"

	phy=$(iw dev "${iface}" info | grep wiphy | awk '{print "phy"$2}')
}
