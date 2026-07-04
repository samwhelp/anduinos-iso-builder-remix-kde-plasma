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
LIBS_DIR_PATH="${BASE_DIR_PATH}/helper/libs"


#=============================
# Init
#=============================

source "${LIBS_DIR_PATH}/controller/init.sh"




#=============================
# Main
#=============================

function portal_combine_via_git () {
	model_combine_via_git
}

portal_combine_via_git
