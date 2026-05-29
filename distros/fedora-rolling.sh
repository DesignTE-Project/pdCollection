#!/bin/bash
# This is a distribution plug-in for Fedora (rolling).
# Auto-generated on 2026-05-29T11:01:50.531341

DISTRO_NAME="Fedora (rolling)"
DISTRO_COMMENT="Fedora of rolling from Proot-distro v4.6.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.6.0/fedora-aarch64-pd-v4.6.0.tar.xz"
TARBALL_SHA256['aarch64']="920caf3290ddaf9347de51ccadb0b6391c0244286072a6664fb1600eee360b9c"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
