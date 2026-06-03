#!/bin/bash
# This is a distribution plug-in for Ubuntu (mantic).
# Auto-generated on 2026-06-03T12:27:54.793692

DISTRO_NAME="Ubuntu (mantic)"
DISTRO_COMMENT="Ubuntu of mantic from Proot-distro v4.8.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.7.0/ubuntu-mantic-aarch64-pd-v4.7.0.tar.xz"
TARBALL_SHA256['aarch64']="6bc671c37912fc41e230f6ed11d60c83cd1756e6c8d7051709bf8fdeff93aaa7"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.7.0/ubuntu-mantic-arm-pd-v4.7.0.tar.xz"
TARBALL_SHA256['arm']="b249fe3c41249a37fbfe230c530bbb29e44529b2a2b2a950144b87a7bbd8b229"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
