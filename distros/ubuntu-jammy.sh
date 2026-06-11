#!/bin/bash
# This is a distribution plug-in for Ubuntu (jammy).
# Auto-generated on 2026-06-11T12:01:50.164371

DISTRO_NAME="Ubuntu (jammy)"
DISTRO_COMMENT="Ubuntu of jammy from Proot-distro v4.11.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-jammy-aarch64-pd-v4.11.0.tar.xz"
TARBALL_SHA256['aarch64']="caddd5b6d4dc48fd028e369a9ecb101f96e01ad3957b46e77f637252612ec628"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-jammy-arm-pd-v4.11.0.tar.xz"
TARBALL_SHA256['arm']="1add960ad0513af5c35d5b8ebfa645999f6338be27f74bed74086236d9a8e998"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
