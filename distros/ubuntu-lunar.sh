#!/bin/bash
# This is a distribution plug-in for Ubuntu (lunar).
# Auto-generated on 2026-05-30T09:48:45.198777

DISTRO_NAME="Ubuntu (lunar)"
DISTRO_COMMENT="Ubuntu of lunar from Proot-distro v4.7.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.7.0/ubuntu-lunar-aarch64-pd-v4.7.0.tar.xz"
TARBALL_SHA256['aarch64']="4fa21d6a72bc687492a2d11270d5999cf2e4741cfbbda8707b36c242bfc993ef"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.7.0/ubuntu-lunar-arm-pd-v4.7.0.tar.xz"
TARBALL_SHA256['arm']="4324fe1acdb964793c1c3091897e4ec68d9d0d84687b1fe77fc3662594d17c22"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
