#!/bin/bash
# This is a distribution plug-in for Ubuntu (mantic).
# Auto-generated on 2026-06-07T10:19:49.602117

DISTRO_NAME="Ubuntu (mantic)"
DISTRO_COMMENT="Ubuntu of mantic from Proot-distro v4.8.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.8.0/ubuntu-mantic-aarch64-pd-v4.8.0.tar.xz"
TARBALL_SHA256['aarch64']="1057ec14045fa2174e0c5a5249db59bb1206573f273c0c5ae0bcfc877fe732df"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.8.0/ubuntu-mantic-arm-pd-v4.8.0.tar.xz"
TARBALL_SHA256['arm']="eb968b49e61892d8f02fcee88e130169e737838a8f94f9464e58b2c9cd84e003"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
