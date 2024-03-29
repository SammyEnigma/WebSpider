#############################################################################
# Makefile for building: WebSpider
# Generated by qmake (3.0) (Qt 5.5.1)
# Project:  WebSpider.pro
# Template: app
# Command: D:\Qt\Qt5.5.1\5.5\msvc2013\bin\qmake.exe -spec win32-msvc2013 "CONFIG+=debug" -o Makefile WebSpider.pro
#############################################################################

MAKEFILE      = Makefile

first: debug
install: debug-install
uninstall: debug-uninstall
QMAKE         = D:\Qt\Qt5.5.1\5.5\msvc2013\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
SUBTARGETS    =  \
		debug \
		release


debug: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug uninstall
release: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release uninstall

Makefile: WebSpider.pro ..\..\Qt5.5.1\5.5\msvc2013\mkspecs\win32-msvc2013\qmake.conf ..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\spec_pre.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\common\msvc-desktop.conf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\qconfig.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dcollision.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dcollision_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dcore.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dcore_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dinput.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dinput_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dlogic.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dlogic_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dquick.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dquick_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dquickrenderer.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dquickrenderer_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3drenderer.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3drenderer_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axbase.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axbase_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axcontainer.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axcontainer_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axserver.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axserver_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_bluetooth.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_bluetooth_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_bootstrap_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_clucene_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_concurrent.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_concurrent_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_core.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_core_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_dbus.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_dbus_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_declarative.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_declarative_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_designer.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_designer_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_designercomponents_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_enginio.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_enginio_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_gui.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_gui_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_help.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_help_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_location.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_location_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_multimedia.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_multimedia_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_multimediawidgets.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_multimediawidgets_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_network.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_network_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_nfc.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_nfc_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_opengl.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_opengl_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_openglextensions.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_openglextensions_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_platformsupport_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_positioning.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_positioning_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_printsupport.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_printsupport_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qml.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qml_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qmldevtools_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qmltest.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qmltest_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qtmultimediaquicktools_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_quick.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_quick_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_quickparticles_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_quickwidgets.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_quickwidgets_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_script.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_script_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_scripttools.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_scripttools_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_sensors.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_sensors_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_serialport.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_serialport_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_sql.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_sql_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_svg.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_svg_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_testlib.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_testlib_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_uiplugin.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_uitools.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_uitools_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webchannel.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webchannel_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webengine.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webengine_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webenginecore.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webenginecore_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webenginewidgets.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webenginewidgets_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webkit.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webkit_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webkitwidgets.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webkitwidgets_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_websockets.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_websockets_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webview_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_widgets.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_widgets_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_winextras.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_winextras_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_xml.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_xml_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_xmlpatterns.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_xmlpatterns_private.pri \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\qt_functions.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\qt_config.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\win32\qt_config.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\win32-msvc2013\qmake.conf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\spec_post.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\exclusive_builds.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\default_pre.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\win32\default_pre.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\resolve_config.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\exclusive_builds_post.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\default_post.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\win32\console.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\win32\rtti.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\c++11.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\precompile_header.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\warn_on.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\qt.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\resources.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\moc.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\win32\opengl.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\testcase_targets.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\exceptions.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\yacc.prf \
		..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\lex.prf \
		WebSpider.pro \
		D:/Qt/Qt5.5.1/5.5/msvc2013/lib/Qt5Gui.prl \
		D:/Qt/Qt5.5.1/5.5/msvc2013/lib/Qt5Network.prl \
		D:/Qt/Qt5.5.1/5.5/msvc2013/lib/Qt5Core.prl
	$(QMAKE) -spec win32-msvc2013 "CONFIG+=debug" -o Makefile WebSpider.pro
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\spec_pre.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\common\msvc-desktop.conf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\qconfig.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dcollision.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dcollision_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dcore.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dcore_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dinput.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dinput_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dlogic.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dlogic_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dquick.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dquick_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dquickrenderer.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3dquickrenderer_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3drenderer.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_3drenderer_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axbase.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axbase_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axcontainer.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axcontainer_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axserver.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_axserver_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_bluetooth.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_bluetooth_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_bootstrap_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_clucene_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_concurrent.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_concurrent_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_core.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_core_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_dbus.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_dbus_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_declarative.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_declarative_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_designer.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_designer_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_designercomponents_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_enginio.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_enginio_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_gui.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_gui_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_help.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_help_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_location.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_location_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_multimedia.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_multimedia_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_multimediawidgets.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_multimediawidgets_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_network.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_network_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_nfc.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_nfc_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_opengl.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_opengl_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_openglextensions.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_openglextensions_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_platformsupport_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_positioning.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_positioning_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_printsupport.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_printsupport_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qml.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qml_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qmldevtools_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qmltest.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qmltest_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_qtmultimediaquicktools_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_quick.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_quick_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_quickparticles_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_quickwidgets.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_quickwidgets_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_script.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_script_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_scripttools.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_scripttools_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_sensors.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_sensors_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_serialport.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_serialport_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_sql.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_sql_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_svg.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_svg_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_testlib.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_testlib_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_uiplugin.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_uitools.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_uitools_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webchannel.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webchannel_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webengine.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webengine_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webenginecore.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webenginecore_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webenginewidgets.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webenginewidgets_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webkit.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webkit_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webkitwidgets.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webkitwidgets_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_websockets.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_websockets_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_webview_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_widgets.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_widgets_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_winextras.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_winextras_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_xml.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_xml_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_xmlpatterns.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\modules\qt_lib_xmlpatterns_private.pri:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\qt_functions.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\qt_config.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\win32\qt_config.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\win32-msvc2013\qmake.conf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\spec_post.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\exclusive_builds.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\default_pre.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\win32\default_pre.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\resolve_config.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\exclusive_builds_post.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\default_post.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\win32\console.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\win32\rtti.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\c++11.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\precompile_header.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\warn_on.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\qt.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\resources.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\moc.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\win32\opengl.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\testcase_targets.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\exceptions.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\yacc.prf:
..\..\Qt5.5.1\5.5\msvc2013\mkspecs\features\lex.prf:
WebSpider.pro:
D:/Qt/Qt5.5.1/5.5/msvc2013/lib/Qt5Gui.prl:
D:/Qt/Qt5.5.1/5.5/msvc2013/lib/Qt5Network.prl:
D:/Qt/Qt5.5.1/5.5/msvc2013/lib/Qt5Core.prl:
qmake: FORCE
	@$(QMAKE) -spec win32-msvc2013 "CONFIG+=debug" -o Makefile WebSpider.pro

qmake_all: FORCE

make_first: debug-make_first release-make_first  FORCE
all: debug-all release-all  FORCE
clean: debug-clean release-clean  FORCE
	-$(DEL_FILE) WebSpider.exp
	-$(DEL_FILE) WebSpider.ilk
	-$(DEL_FILE) WebSpider.idb
distclean: debug-distclean release-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) WebSpider.lib WebSpider.pdb

debug-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocclean
release-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocclean
mocclean: debug-mocclean release-mocclean

debug-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocables
release-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocables
mocables: debug-mocables release-mocables

check: first
FORCE:

$(MAKEFILE).Debug: Makefile
$(MAKEFILE).Release: Makefile
