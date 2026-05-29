#!/bin/bash
# This is a distribution plug-in for Ubuntu (questing).
# Auto-generated on 2026-05-29T11:01:50.529186

DISTRO_NAME="Ubuntu (questing)"
DISTRO_COMMENT="Ubuntu of questing from Proot-distro v4.30.1"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.30.1/ubuntu-questing-aarch64-pd-v4.30.1.tar.xz"
TARBALL_SHA256['aarch64']="5ab35b90cd9a9f180656261ba400a135c4c01c2da4b74522118342f985c2d328"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.30.1/ubuntu-questing-arm-pd-v4.30.1.tar.xz"
TARBALL_SHA256['arm']="b074efe535b565f426219f20b35af0c4a7b3d0bc18ebd4fa11ccbd7370315b53"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
