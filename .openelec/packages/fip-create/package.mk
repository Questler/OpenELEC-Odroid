################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="fip-create"
PKG_VERSION="9931932"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="other"
PKG_SITE="https://github.com/ARM-software/arm-trusted-firmware/tree/master/tools/fip_create"
PKG_URL="$ODROID_MIRROR/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_HOST_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="Firmware Image Package (fip) Creation Tool"
PKG_LONGDESC="Firmware Image Package (fip) Creation Tool"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

makeinstall_host() {
  cp -PR fip_create $ROOT/$TOOLCHAIN/bin/
}
