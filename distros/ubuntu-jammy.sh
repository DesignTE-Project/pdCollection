#!/bin/bash
# This is a distribution plug-in for Ubuntu (jammy).
# Auto-generated on 2026-05-28T11:28:58.264892

DISTRO_NAME="Ubuntu (jammy)"
DISTRO_COMMENT="Ubuntu of jammy from Proot-distro v4.11.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.7.0/ubuntu-jammy-aarch64-pd-v4.7.0.tar.xz"
TARBALL_SHA256['aarch64']="d4e3aa02399f84806239c7cea491c5d75eaf8d9e8e00b9f0318d5b990a908519"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.7.0/ubuntu-jammy-arm-pd-v4.7.0.tar.xz"
TARBALL_SHA256['arm']="d2416a9c9df2017edc98d2bc9210c13abbb98a81fc27db5b319c5e1887a7cae5"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
