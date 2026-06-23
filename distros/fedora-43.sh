#!/bin/bash
# This is a distribution plug-in for Fedora (43).
# Auto-generated on 2026-06-23T10:52:11.275819

DISTRO_NAME="Fedora (43)"
DISTRO_COMMENT="Fedora of 43 from Proot-distro v4.31.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.31.0/fedora-aarch64-pd-v4.31.0.tar.xz"
TARBALL_SHA256['aarch64']="e3c0aca71572ed343a29c6f41c6150583bf840f903047bb97b1ec45cefe95865"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
