#!/bin/bash
#
# setup_web.sh

setup_web(){
	local ns web_dir port pid_file

	ns="${1}"
	web_dir="${2}"
	port=80
	pid_file="/tmp/httpd-${ns}.pid"

	ip netns exec "${ns}" python3 -m http.server "${port}" --directory "${web_dir}" &>/dev/null &
	echo "${!}" > "${pid_file}"
}

stop_web(){
	local ns pid_file

	ns="${1}"
	pid_file="/tmp/httpd-${ns}.pid"

	if [[ -f "${pid_file}" ]]; then
		kill "$(cat "${pid_file}")" &>/dev/null
		rm -f "${pid_file}"
	fi
}
