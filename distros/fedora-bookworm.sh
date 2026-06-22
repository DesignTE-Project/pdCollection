#!/bin/bash
# This is a distribution plug-in for Fedora (bookworm).
# Auto-generated on 2026-06-22T13:25:12.722083

DISTRO_NAME="Fedora (bookworm)"
DISTRO_COMMENT="Fedora of bookworm from Proot-distro v4.17.3"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.17.3/fedora-aarch64-pd-v4.17.3.tar.xz"
TARBALL_SHA256['aarch64']="5f51f3f2da790732fc6b720eefe5ec44841cf8edb21dfa342005257c4665bb8c"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
