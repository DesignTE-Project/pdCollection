#!/bin/bash
# This is a distribution plug-in for Fedora (noble).
# Auto-generated on 2026-06-17T12:10:00.092925

DISTRO_NAME="Fedora (noble)"
DISTRO_COMMENT="Fedora of noble from Proot-distro v4.15.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.15.0/fedora-aarch64-pd-v4.15.0.tar.xz"
TARBALL_SHA256['aarch64']="0aa0da1860db99a26b2ecb3996e1c39020395e882658c3e33ea5d748811b3271"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
