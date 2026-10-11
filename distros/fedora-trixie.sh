#!/bin/bash
# This is a distribution plug-in for Fedora (trixie).
# Auto-generated on 2026-10-11T14:26:54.252903

DISTRO_NAME="Fedora (trixie)"
DISTRO_COMMENT="Fedora of trixie from Proot-distro v4.29.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.25.0/fedora-aarch64-pd-v4.25.0.tar.xz"
TARBALL_SHA256['aarch64']="9ca78013e8d51d634c0906e389e6174a816487491534385df01bee4752a5a9d8"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
