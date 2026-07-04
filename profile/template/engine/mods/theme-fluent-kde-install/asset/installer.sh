#!/usr/bin/env bash


#=============================
# Set up the environment
#=============================

set -e						# exit on error
set -o pipefail				# exit on pipeline error
set -u						# treat unset variable as error


#=============================
# Base Path
#=============================

BASE_DIR_PATH="$(dirname "$(realpath "${0}")")"
CMD_FILE_NAME="$(basename "${0}")"




#=============================
# Option
#=============================

DEFAULT_SRCDIR="${BASE_DIR_PATH}/prj"
SRCDIR="${SRCDIR:=$DEFAULT_SRCDIR}"


DEFAULT_DESTDIR="${BASE_DIR_PATH}/pkg"
DESTDIR="${DESTDIR:=$DEFAULT_DESTDIR}"




#=============================
# Util
#=============================

function util_copy_from_srcdir_to_desdir () {

	local src_dir_path="${1}"
	local des_dir_path="${2}"


	echo
	echo mkdir -p "${src_dir_path}"
	mkdir -p "${src_dir_path}"


	echo
	echo mkdir -p "${des_dir_path}"
	mkdir -p "${des_dir_path}"


	echo
	echo cp -rfT "${src_dir_path}" "${des_dir_path}"
	cp -rfT "${src_dir_path}" "${des_dir_path}"


	echo

	return 0

}




#=============================
# Module
#=============================

function mod_theme_install_aurorae_theme () {

	echo
	echo "Part: mod_theme_install_aurorae_theme"


	local src_dir_path="${prjdir}/aurorae"
	local des_dir_path="${pkgdir}/usr/share/aurorae/themes"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}

function mod_theme_install_color_schemes () {

	echo
	echo "Part: mod_theme_install_color_schemes"


	local src_dir_path="${prjdir}/color-schemes"
	local des_dir_path="${pkgdir}/usr/share/color-schemes"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}

function mod_theme_install_kvantum_theme () {

	echo
	echo "Part: mod_theme_install_kvantum_theme"


	local src_dir_path="${prjdir}/Kvantum"
	local des_dir_path="${pkgdir}/usr/share/Kvantum"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	rm -rf "${des_dir_path}/dark_header_version"


	return 0
}

function mod_theme_install_plasma_theme () {

	echo
	echo "Part: mod_theme_install_plasma_theme"


	local src_dir_path="${prjdir}/plasma"
	local des_dir_path="${pkgdir}/usr/share/plasma"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	rm -rf "${des_dir_path}/look-and-feel/backgrounds"
	rm -f "${des_dir_path}/look-and-feel/backgrounds-blur.svg"
	rm -f "${des_dir_path}/look-and-feel/Fluent-lnf.svg"
	rm -f "${des_dir_path}/look-and-feel/render-lnf.sh"
	rm -f "${des_dir_path}/look-and-feel/render-wallpapers.sh"


	return 0
}

function mod_theme_install_sddm_theme () {

	echo
	echo "Part: mod_theme_install_sddm_theme"


	local src_dir_path="${prjdir}/sddm"
	local des_dir_path="${pkgdir}/usr/share/sddm/themes"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	mv "${des_dir_path}/Fluent-6.0" "${des_dir_path}/Fluent"
	cp -f "${des_dir_path}/preview.png" "${des_dir_path}/Fluent/preview.png"
	cp -f "${des_dir_path}/backgrounds/background.png" "${des_dir_path}/Fluent/background.png"


	rm -rf "${des_dir_path}/Fluent-5.0"
	rm -rf "${des_dir_path}/assets"
	rm -rf "${des_dir_path}/backgrounds"
	rm -f "${des_dir_path}/preview.png"
	rm -f "${des_dir_path}/install.sh"
	rm -f "${des_dir_path}/README.md"


	return 0
}

function mod_theme_install_wallpaper () {

	echo
	echo "Part: mod_theme_install_wallpaper"


	local src_dir_path="${prjdir}/wallpaper"
	local des_dir_path="${pkgdir}/usr/share/wallpapers"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}




#=============================
# Model
#=============================

function model_fluent_kde_theme_installer () {


	echo
	echo "Info: Theme Install"

	echo
	echo "Shell: DESTDIR=${DESTDIR}"

	prjdir="${SRCDIR}"

	pkgdir="${DESTDIR}"


	echo
	echo mkdir -p "${prjdir}"
	mkdir -p "${prjdir}"


	echo
	echo mkdir -p "${pkgdir}"
	mkdir -p "${pkgdir}"




	mod_theme_install_aurorae_theme
	mod_theme_install_color_schemes
	mod_theme_install_kvantum_theme
	mod_theme_install_plasma_theme
	mod_theme_install_sddm_theme
	mod_theme_install_wallpaper




	echo

	return 0

}




#=============================
# Main
#=============================

function portal_fluent_kde_theme_installer () {

	model_fluent_kde_theme_installer "${@}"

}

portal_fluent_kde_theme_installer "${@}"
