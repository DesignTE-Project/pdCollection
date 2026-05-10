#!/bin/bash
# This is a distribution plug-in for Fedora (rolling).
# Auto-generated on 2026-05-10T09:20:28.861874

DISTRO_NAME="Fedora (rolling)"
DISTRO_COMMENT="Fedora of rolling from Proot-distro v4.6.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.0.2/fedora-aarch64-pd-v4.0.2.tar.xz"
TARBALL_SHA256['aarch64']="339777a5ab14212b7541d1289aef33540c88a9a247035ba05144bd8e58903b84"

distro_setup() {
	# Fix environment variables on login or su.
	run_proot_cmd authselect opt-out
	echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/system-auth
}
