#!/bin/bash
# This is a distribution plug-in for Ubuntu (plucky).
# Auto-generated on 2026-05-29T11:01:50.529863

DISTRO_NAME="Ubuntu (plucky)"
DISTRO_COMMENT="Ubuntu of plucky from Proot-distro v4.29.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.29.0/ubuntu-plucky-aarch64-pd-v4.29.0.tar.xz"
TARBALL_SHA256['aarch64']="63cee3aecc0473785ef761ec1127387ed2abbea0b26d74e5187601568fbb335f"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.29.0/ubuntu-plucky-arm-pd-v4.29.0.tar.xz"
TARBALL_SHA256['arm']="f6abc8042c5331392058dc2ec8c296b6d3c93419cb007649c34e35a170901fbb"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
