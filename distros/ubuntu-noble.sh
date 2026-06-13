#!/bin/bash
# This is a distribution plug-in for Ubuntu (noble).
# Auto-generated on 2026-06-13T10:19:52.365567

DISTRO_NAME="Ubuntu (noble)"
DISTRO_COMMENT="Ubuntu of noble from Proot-distro v4.18.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.17.3/ubuntu-noble-aarch64-pd-v4.17.3.tar.xz"
TARBALL_SHA256['aarch64']="81ac0fb0d16ded12ab11cede62f67b875ff56f9fa1aa9eb786415c3ec5c477d2"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.17.3/ubuntu-noble-arm-pd-v4.17.3.tar.xz"
TARBALL_SHA256['arm']="611f39e8b942202d14608026ef3d674b35a1fea6e780dbaa5ca001cbb63d04c0"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
