#!/bin/bash
# This is a distribution plug-in for Ubuntu (focal).
# Auto-generated on 2026-05-12T10:22:42.758422

DISTRO_NAME="Ubuntu (focal)"
DISTRO_COMMENT="Ubuntu of focal from Proot-distro v4.8.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.8.0/ubuntu-focal-aarch64-pd-v4.8.0.tar.xz"
TARBALL_SHA256['aarch64']="386704baf86bebaf39141a92f4a5fa4cf4fdb94bcb55b85e94b1aea603e000ff"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.8.0/ubuntu-focal-arm-pd-v4.8.0.tar.xz"
TARBALL_SHA256['arm']="ee38e86e7306f6d61683d5ffd0902ae3aa90550d062aac3ee412eba4db0e66dd"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
