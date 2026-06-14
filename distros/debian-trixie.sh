#!/bin/bash
# This is a distribution plug-in for Debian (trixie).
# Auto-generated on 2026-06-14T10:43:15.552222

DISTRO_NAME="Debian (trixie)"
DISTRO_COMMENT="Debian of trixie from Proot-distro v4.29.0"

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v4.26.0/debian-trixie-aarch64-pd-v4.26.0.tar.xz"
TARBALL_SHA256['aarch64']="cda75346f2c9e09e8a802665745b5a7e2bd6d8584dbf1c86c8c57ef54c4e2d3c"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v4.26.0/debian-trixie-arm-pd-v4.26.0.tar.xz"
TARBALL_SHA256['arm']="868ad59b44098d7175819bdabda0dcd98ddc67af15c153cc9e22797ac77f9dd3"
TARBALL_URL['i686']="https://github.com/termux/proot-distro/releases/download/v4.26.0/debian-trixie-i686-pd-v4.26.0.tar.xz"
TARBALL_SHA256['i686']="8579087c23d759f3ded2c88d8eb707fe9efe524330c8894828f3246cdcc36117"

distro_setup() {
	# Configure en_US.UTF-8 locale.
	sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
	run_proot_cmd DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
}
