#!/usr/bin/env bash


#=============================
# Path / Base
#=============================

##
## * paln / gear
## * plan / gear / libs
##

GEAR_DIR_PATH="$(realpath "${LIBS_DIR_PATH}/..")"
PLAN_DIR_PATH="$(realpath "${GEAR_DIR_PATH}/..")"




#=============================
# Path / Model / Base
#=============================

DEFAULT_SUBJECT_DIR_NAME="${SUBJECT_NAME}"
SUBJECT_DIR_NAME="${SUBJECT_DIR_NAME:=$DEFAULT_SUBJECT_DIR_NAME}"


DEFAULT_TMP_DIR_PATH="${HOME}/work"
TMP_DIR_PATH="${TMP_DIR_PATH:=$DEFAULT_TMP_DIR_PATH}"


WORK_DIR_PATH="${TMP_DIR_PATH}/${SUBJECT_DIR_NAME}"



#=============================
# Path / Model / Source
#=============================

##
## * gear / profile
##

SOURCE_DIR_PATH="${PLAN_DIR_PATH}"
SOURCE_ISO_PROFILE_DIR_PATH="${SOURCE_DIR_PATH}/profile"




#=============================
# Path / Model / Target
#=============================

##
## * ~ / work
## * ~ / work / subject_dir_name / iso-profile
##

TARGET_DIR_PATH="${TMP_DIR_PATH}"
TARGET_ISO_PROFILE_DIR_PATH="${TARGET_DIR_PATH}/${SUBJECT_DIR_NAME}/iso-profile"
