#!/bin/bash
# This is a distribution plug-in for Fedora (trixie).
# Auto-generated on 2026-09-23T13:05:39.627569

DISTRO_NAME="Fedora (trixie)"
DISTRO_COMMENT="Fedora of trixie from Proot-distro v4.29.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.24.0/fedora-aarch64-pd-v4.24.0.tar.xz"
TARBALL_SHA256['aarch64']="48abf1d8b9cc7625d4212cc604ce3c113ea6d6d806de60b2c3f74c5b5452cd72"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
