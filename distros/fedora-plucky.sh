#!/bin/bash
# This is a distribution plug-in for Fedora (plucky).
# Auto-generated on 2026-06-08T12:19:20.553826

DISTRO_NAME="Fedora (plucky)"
DISTRO_COMMENT="Fedora of plucky from Proot-distro v4.27.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.27.0/fedora-aarch64-pd-v4.27.0.tar.xz"
TARBALL_SHA256['aarch64']="55409069cbe314cb8e42f9509a89eb865b81a2010be88aa1ead27db29dbf03ee"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
