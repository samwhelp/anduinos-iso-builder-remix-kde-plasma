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
## ## Model / dconf
##

model_dconf_system_db_init () {

	##sudo apt-get install -y dconf-cli

	##sudo dconf update
	dconf update

}




##
## ## Main / Start
##

print_ok "Init dconf system-db..."
model_dconf_system_db_init
judge "Init dconf system-db"
