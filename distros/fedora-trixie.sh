#!/bin/bash
# This is a distribution plug-in for Fedora (trixie).
# Auto-generated on 2026-06-07T10:19:49.601115

DISTRO_NAME="Fedora (trixie)"
DISTRO_COMMENT="Fedora of trixie from Proot-distro v4.29.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.23.0/fedora-aarch64-pd-v4.23.0.tar.xz"
TARBALL_SHA256['aarch64']="837ccdbd862c96bf7140c0c21f32f2b89b7c910cb5760e6d5946c425c640524c"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
