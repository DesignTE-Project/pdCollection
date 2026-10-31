#!/bin/bash
# This is a distribution plug-in for Fedora (trixie).
# Auto-generated on 2026-10-31T13:57:24.700178

DISTRO_NAME="Fedora (trixie)"
DISTRO_COMMENT="Fedora of trixie from Proot-distro v4.29.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.29.0/fedora-aarch64-pd-v4.29.0.tar.xz"
TARBALL_SHA256['aarch64']="0f683e7c3b250660b490479f0c1c57e7450082f6ddc81375ddc863e611a76c65"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
