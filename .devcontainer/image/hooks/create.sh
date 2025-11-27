#!/usr/bin/env bash

# Create shell history cache files if they don't exist for some reason
touch /persist/shellhistory/.bash_history
touch /persist/shellhistory/.zsh_history

# Use GitHub token secret if it exists
if [[ -s /secrets/.ghtoken && -r /secrets/.ghtoken ]]; then
	token="$(cat /secrets/.ghtoken)"
	confighome="${XDG_CONFIG_HOME:-${HOME}/.config/}"

	# Add GitHub token to Nix config
	configfile="${confighome}/nix/nix.conf"
	tmpfile="$(mktemp)"

	mkdir --parents "$(dirname "${configfile}")"
	touch "${configfile}"

	if grep --quiet extra-access-tokens "${configfile}"; then
		sed "s|extra-access-tokens.*|extra-access-tokens = github.com=${token}|" "${configfile}" >"${tmpfile}"
		cat "${tmpfile}" >"${configfile}"
		rm "${tmpfile}"
	else
		echo "extra-access-tokens = github.com=${token}" >>"${configfile}"
	fi
fi

# Use age keys for SOPS if they exist
if [[ -s /secrets/.agekeys && -r /secrets/.agekeys ]]; then
	confighome="${XDG_CONFIG_HOME:-${HOME}/.config/}"

	# Copy age keys to SOPS config
	targetfile="${confighome}/sops/age/keys.txt"
	mkdir --parents "$(dirname "${targetfile}")"
	cp --force /secrets/.agekeys "${targetfile}"
fi
