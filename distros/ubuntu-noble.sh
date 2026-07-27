#!/bin/bash
# This is a distribution plug-in for Ubuntu (noble).
# Auto-generated on 2026-07-27T10:59:25.998813

DISTRO_NAME="Ubuntu (noble)"
DISTRO_COMMENT="Ubuntu of noble from Proot-distro v4.18.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.18.0/ubuntu-noble-aarch64-pd-v4.18.0.tar.xz"
TARBALL_SHA256['aarch64']="91acaa786b8e2fbba56a9fd0f8a1188cee482b5c7baeed707b29ddaa9a294daa"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.18.0/ubuntu-noble-arm-pd-v4.18.0.tar.xz"
TARBALL_SHA256['arm']="2afb7e1ff17983fa2cf4c57edeea6be427ffb0359d8628b24a147b4c8aa276d5"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
