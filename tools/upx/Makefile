#
# Copyright (C) 2011-2020 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=upx
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_DATE:=2020-08-09
PKG_SOURCE_VERSION:=6428292477e03ca024aa7cf6e1f2b0bd46e6f5ed
PKG_SOURCE_URL:=https://github.com/upx/upx.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_SOURCE_DATE).tar.gz

HOST_BUILD_DEPENDS:=ucl/host

include $(INCLUDE_DIR)/host-build.mk

define Host/Compile
	UPX_UCLDIR=$(STAGING_DIR_HOST) \
	$(MAKE) -C $(HOST_BUILD_DIR)/src \
		CXXFLAGS_WERROR="" LDFLAGS="$(HOST_LDFLAGS)" \
		CXX="$(HOSTCXX)"
endef

define Host/Install
	$(CP) $(HOST_BUILD_DIR)/src/upx.out $(STAGING_DIR_HOST)/bin/upx
endef

define Host/Clean
	rm -f $(STAGING_DIR_HOST)/bin/upx
endef

$(eval $(call HostBuild))
