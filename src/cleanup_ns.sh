#!/bin/bash
#
# cleanup_ns.sh

cleanup_ns(){
	local list_ns action

	action="${1}"
	list_ns=(
		"ap"
		"sta"
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
