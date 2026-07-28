#!/usr/bin/env bash


################################################################################
# Args / Base
################################################################################

SUBJECT_NAME="anduinos-iso-builder-remix-kde-plasma"

TMP_DIR_PATH="${HOME}/work"




################################################################################
# Args / Master / Repo
################################################################################

MASTER_ISO_PROFILE_REPO_GIT_URL="https://github.com/samwhelp/anduinos-iso-builder-template.git"
MASTER_ISO_PROFILE_REPO_BRANCH_NAME="main"


##MASTER_ISO_PROFILE_REPO_ARCHIVE_FILE_EXT_NAME="zip"
MASTER_ISO_PROFILE_REPO_ARCHIVE_FILE_EXT_NAME="tar.gz"


MASTER_ISO_PROFILE_REPO_ARCHIVE_FILE_NAME="${MASTER_ISO_PROFILE_REPO_BRANCH_NAME}.${MASTER_ISO_PROFILE_REPO_ARCHIVE_FILE_EXT_NAME}"
MASTER_ISO_PROFILE_REPO_ARCHIVE_EXTRACT_DIR_NAME="anduinos-iso-builder-template-${MASTER_ISO_PROFILE_REPO_BRANCH_NAME}"


MASTER_ISO_PROFILE_REPO_ARCHIVE_URL="https://github.com/samwhelp/anduinos-iso-builder-template/archive/refs/heads/${MASTER_ISO_PROFILE_REPO_ARCHIVE_FILE_NAME}"
