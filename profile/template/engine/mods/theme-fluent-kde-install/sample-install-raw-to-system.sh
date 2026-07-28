#!/usr/bin/env bash


################################################################################
# Set up the environment
################################################################################

set -e						# exit on error
set -o pipefail				# exit on pipeline error
set -u						# treat unset variable as error


################################################################################
# Base Path
################################################################################

BASE_DIR_PATH="$(dirname "$(realpath "${0}")")"
LIBS_DIR_PATH="$(realpath "${BASE_DIR_PATH}/../../libs")"


################################################################################
# Init
################################################################################

source "${LIBS_DIR_PATH}/domain/worker/init.sh"




################################################################################
# Option
################################################################################

##TARGET_DIR_PATH="${BASE_DIR_PATH}"
TARGET_DIR_PATH="/tmp"


DEFAULT_ASSET_DIR_PATH="${BASE_DIR_PATH}/asset"
REF_ASSET_DIR_PATH="${REF_ASSET_DIR_PATH:=$DEFAULT_ASSET_DIR_PATH}"


#DEFAULT_BUILD_DIR_PATH="${TARGET_DIR_PATH}/build"
DEFAULT_BUILD_DIR_PATH="${TARGET_DIR_PATH}/build-fluent-kde-theme"
REF_BUILD_DIR_PATH="${REF_BUILD_DIR_PATH:=$DEFAULT_BUILD_DIR_PATH}"


DEFAULT_REPO_URL="https://github.com/vinceliuice/Fluent-kde.git"
REF_REPO_URL="${REF_REPO_URL:=$DEFAULT_REPO_URL}"




################################################################################
# Module
################################################################################

function mod_clean_pre_build () {
	rm -rf "${DEFAULT_BUILD_DIR_PATH}"
}

function mod_theme_project_clone () {
	echo
	echo "Info: mod_theme_project_clone"
	echo

	#echo
	#echo apt install -y git
	#apt install -y git

	git clone "${REF_REPO_URL}" "${prjdir}"
}

function mod_theme_copy_installer () {
	install -Dm755 "${REF_ASSET_DIR_PATH}/installer.sh" "${REF_BUILD_DIR_PATH}/installer.sh"
}

function mod_theme_run_installer () {
	"${REF_BUILD_DIR_PATH}/installer.sh"
}

function mod_install_theme_raw_to_system () {
	echo
	echo "Info: mod_install_theme_raw_to_system"
	echo
	echo cp -rfT "${pkgdir}" /
	#cp -rfT "${pkgdir}" /
}




################################################################################
# Model
################################################################################

function model_theme_fluent_kde_install () {

	prjdir="${REF_BUILD_DIR_PATH}/prj"

	pkgdir="${REF_BUILD_DIR_PATH}/pkg"


	mod_clean_pre_build

	mod_theme_project_clone

	mod_theme_copy_installer

	mod_theme_run_installer

	mod_install_theme_raw_to_system

}




################################################################################
# Main
################################################################################

function portal_theme_fluent_kde_install () {

	core_check_permission

	print_info "Install fluent-kde Theme ..."
	model_theme_fluent_kde_install
	judge "Install fluent-kde Theme"

}

portal_theme_fluent_kde_install
