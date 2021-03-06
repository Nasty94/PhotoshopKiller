#############################################################################
# Makefile for building: Joonistamine
# Generated by qmake (3.0) (Qt 5.0.1) on: Wed Apr 10 23:40:43 2013
# Project:  Joonistamine.pro
# Template: subdirs
# Command: /home/rsi2m/Qt5.0.1/5.0.1/gcc/bin/qmake -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile Joonistamine.pro
#############################################################################

MAKEFILE      = Makefile

first: make_first
QMAKE         = /home/rsi2m/Qt5.0.1/5.0.1/gcc/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
SUBTARGETS    =  \
		sub-src


sub-src-qmake_all:  FORCE
	@test -d src/ || $(MKDIR) src/ 
	cd src/ && $(QMAKE) /home/rsi2m/Documents/PhotoshopKiller/PhotoshopKiller/src/src.pro -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile
	cd src/ && $(MAKE) -f Makefile qmake_all
sub-src: FORCE
	@test -d src/ || $(MKDIR) src/ 
	cd src/ && ( test -f Makefile || $(QMAKE) /home/rsi2m/Documents/PhotoshopKiller/PhotoshopKiller/src/src.pro -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile
sub-src-make_first: FORCE
	@test -d src/ || $(MKDIR) src/ 
	cd src/ && ( test -f Makefile || $(QMAKE) /home/rsi2m/Documents/PhotoshopKiller/PhotoshopKiller/src/src.pro -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile 
sub-src-all: FORCE
	@test -d src/ || $(MKDIR) src/ 
	cd src/ && ( test -f Makefile || $(QMAKE) /home/rsi2m/Documents/PhotoshopKiller/PhotoshopKiller/src/src.pro -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile all
sub-src-clean: FORCE
	@test -d src/ || $(MKDIR) src/ 
	cd src/ && ( test -f Makefile || $(QMAKE) /home/rsi2m/Documents/PhotoshopKiller/PhotoshopKiller/src/src.pro -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile clean
sub-src-distclean: FORCE
	@test -d src/ || $(MKDIR) src/ 
	cd src/ && ( test -f Makefile || $(QMAKE) /home/rsi2m/Documents/PhotoshopKiller/PhotoshopKiller/src/src.pro -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile distclean
sub-src-install_subtargets: FORCE
	@test -d src/ || $(MKDIR) src/ 
	cd src/ && ( test -f Makefile || $(QMAKE) /home/rsi2m/Documents/PhotoshopKiller/PhotoshopKiller/src/src.pro -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile install
sub-src-uninstall_subtargets: FORCE
	@test -d src/ || $(MKDIR) src/ 
	cd src/ && ( test -f Makefile || $(QMAKE) /home/rsi2m/Documents/PhotoshopKiller/PhotoshopKiller/src/src.pro -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile uninstall

Makefile: Joonistamine.pro ../../../Qt5.0.1/5.0.1/gcc/mkspecs/linux-g++/qmake.conf ../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/spec_pre.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/shell-unix.conf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/unix.conf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/linux.conf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/gcc-base.conf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/gcc-base-unix.conf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/g++-base.conf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/g++-unix.conf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/qconfig.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_bootstrap.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_clucene.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_concurrent.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_core.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_dbus.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_declarative.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_designer.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_designercomponents.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_gui.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_help.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_multimedia.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_multimediawidgets.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_network.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_opengl.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_platformsupport.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_printsupport.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_qml.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_qmldevtools.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_qmltest.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_qtmultimediaquicktools.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_quick.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_quickparticles.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_script.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_scripttools.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_sql.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_svg.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_testlib.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_uitools.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_v8.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_webkit.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_webkitwidgets.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_widgets.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_xml.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_xmlpatterns.pri \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/qt_functions.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/qt_config.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/linux-g++/qmake.conf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/spec_post.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/exclusive_builds.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/default_pre.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/unix/default_pre.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/debug.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/default_post.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/shared.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/qml_debug.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/declarative_debug.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/unix/gdb_dwarf_index.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/warn_on.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/wayland-scanner.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/testcase_targets.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/exceptions.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/yacc.prf \
		../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/lex.prf \
		Joonistamine.pro
	$(QMAKE) -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile Joonistamine.pro
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/spec_pre.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/shell-unix.conf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/unix.conf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/linux.conf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/gcc-base.conf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/gcc-base-unix.conf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/g++-base.conf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/common/g++-unix.conf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/qconfig.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_bootstrap.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_clucene.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_concurrent.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_core.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_dbus.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_declarative.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_designer.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_designercomponents.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_gui.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_help.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_multimedia.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_multimediawidgets.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_network.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_opengl.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_platformsupport.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_printsupport.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_qml.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_qmldevtools.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_qmltest.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_qtmultimediaquicktools.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_quick.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_quickparticles.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_script.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_scripttools.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_sql.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_svg.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_testlib.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_uitools.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_v8.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_webkit.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_webkitwidgets.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_widgets.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_xml.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/modules/qt_lib_xmlpatterns.pri:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/qt_functions.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/qt_config.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/linux-g++/qmake.conf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/spec_post.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/exclusive_builds.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/default_pre.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/unix/default_pre.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/debug.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/default_post.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/shared.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/qml_debug.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/declarative_debug.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/unix/gdb_dwarf_index.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/warn_on.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/wayland-scanner.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/testcase_targets.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/exceptions.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/yacc.prf:
../../../Qt5.0.1/5.0.1/gcc/mkspecs/features/lex.prf:
Joonistamine.pro:
qmake: FORCE
	@$(QMAKE) -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile Joonistamine.pro

qmake_all: sub-src-qmake_all FORCE

make_first: sub-src-make_first FORCE
all: sub-src-all FORCE
clean: sub-src-clean FORCE
distclean: sub-src-distclean FORCE
	-$(DEL_FILE) Makefile
install_subtargets: sub-src-install_subtargets FORCE
uninstall_subtargets: sub-src-uninstall_subtargets FORCE

sub-src-check:
	@test -d src/ || $(MKDIR) src/ 
	cd src/ && ( test -f Makefile || $(QMAKE) /home/rsi2m/Documents/PhotoshopKiller/PhotoshopKiller/src/src.pro -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile ) && $(MAKE) -f Makefile check
check: sub-src-check
install: install_subtargets  FORCE

uninstall:  uninstall_subtargets FORCE

FORCE:

