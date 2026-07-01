#!/bin/bash
#
# setup_dhcp_server.sh

setup_dhcp_server(){
	local ns config_dnsmasq

	ns="${1}"
	config_dnsmasq="${2}"

	ip netns exec "${ns}" dnsmasq -C "${config_dnsmasq}"
}
