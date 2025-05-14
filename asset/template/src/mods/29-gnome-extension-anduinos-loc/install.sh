set -e                  # exit on error
set -o pipefail         # exit on pipeline error
set -u                  # treat unset variable as error




##
## ## Main / Init
##

REF_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
REF_CMD_FILE_NAME="$(basename "$0")"




##
## ## Main / PATH
##

REF_MASTER_INSTALL_SCRIPT_FILE_PATH="${REF_BASE_DIR_PATH}/${REF_CMD_FILE_NAME}"




##
## ## Main / Start
##

print_ok "Ignore running: ${REF_MASTER_INSTALL_SCRIPT_FILE_PATH}"
