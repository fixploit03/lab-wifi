#!/bin/bash
#
# cleanup_ns.sh

cleanup_ns(){
	local list_ns action

	action="${1}"
	list_ns=(
		"ap-opn"
		"sta-opn"
		"ap-wpa2-personal"
		"sta-wpa2-personal"
		"ap-wpa2-enterprise"
		"sta-wpa2-enterprise"
		"ap-wpa3-transition"
		"sta-wpa3-transition"
		"ap-wpa3-personal"
		"sta-wpa3-personal"
	)

	for ns in "${list_ns[@]}"; do
		if ip netns list | grep -q "${ns}"; then
			ip netns delete "${ns}"
		fi

		if [[ "${action}" == "start" ]]; then
			ip netns add "${ns}"
		fi
	done
}
