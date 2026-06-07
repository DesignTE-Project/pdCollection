#!/bin/bash
# This is a distribution plug-in for Ubuntu (jammy).
# Auto-generated on 2026-06-07T10:19:49.601980

DISTRO_NAME="Ubuntu (jammy)"
DISTRO_COMMENT="Ubuntu of jammy from Proot-distro v4.11.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.8.0/ubuntu-jammy-aarch64-pd-v4.8.0.tar.xz"
TARBALL_SHA256['aarch64']="6517259b712de5429ebb630e537f2ff2d1d4ae2a940f9179e26d91a4b723c16c"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.8.0/ubuntu-jammy-arm-pd-v4.8.0.tar.xz"
TARBALL_SHA256['arm']="1efa6ab1c35194339d1788bba9f5d570f29f27c12e70d46ed14d9f516b918563"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
