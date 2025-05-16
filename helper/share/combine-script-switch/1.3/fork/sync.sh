#!/usr/bin/env bash




set -e




##
## ## Main / Init
##

REF_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
REF_CMD_FILE_NAME="$(basename "$0")"




##
## ## Path / Master Dir
##

REF_MASTER_SOURCE_DIR_PATH="${REF_BASE_DIR_PATH}/asset/template"
REF_MASTER_TARGET_DIR_PATH="${REF_BASE_DIR_PATH}/../../../../.."




##
## ## Prepare / Master Dir
##

mkdir -p "${REF_MASTER_SOURCE_DIR_PATH}"
mkdir -p "${REF_MASTER_TARGET_DIR_PATH}"





##
## ## Model / Sync
##

echo cp -rfT "${REF_MASTER_SOURCE_DIR_PATH}" "${REF_MASTER_TARGET_DIR_PATH}"
cp -rfT "${REF_MASTER_SOURCE_DIR_PATH}" "${REF_MASTER_TARGET_DIR_PATH}"
#cp -rfTv "${REF_MASTER_SOURCE_DIR_PATH}" "${REF_MASTER_TARGET_DIR_PATH}"




##
## ## Model / Tips
##

echo
echo "[OK]: Sync OK"
echo "[Next Step]: cd ${REF_MASTER_TARGET_DIR_PATH}"
echo
