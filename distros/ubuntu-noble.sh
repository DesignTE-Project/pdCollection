#!/bin/bash
# This is a distribution plug-in for Ubuntu (noble).
# Auto-generated on 2026-05-18T11:35:33.877188

DISTRO_NAME="Ubuntu (noble)"
DISTRO_COMMENT="Ubuntu of noble from Proot-distro v4.18.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-noble-aarch64-pd-v4.11.0.tar.xz"
TARBALL_SHA256['aarch64']="a8883244a7031559a2bd8dc16b7d8afc947930b611819d8a28a09545097a6ba5"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.11.0/ubuntu-noble-arm-pd-v4.11.0.tar.xz"
TARBALL_SHA256['arm']="dc5478e96f648e868d68c15c400338460088255d5d964bdfa33e5456ceea54ae"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
