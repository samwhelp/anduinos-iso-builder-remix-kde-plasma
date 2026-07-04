#!/usr/bin/env bash


#=============================
# OPTION
#=============================

##
## # Example
##
## ## On Print Color
##
## ... sh
## ./demo.sh
## ...
##
## ... sh
## IS_OFF_PRINT_COLOR=false ./demo.sh
## ...
##
## ## Off Print Color
##
## ... sh
## IS_OFF_PRINT_COLOR=true ./demo.sh
## ...
##

DEFAULT_IS_OFF_PRINT_COLOR="false"
IS_OFF_PRINT_COLOR="${IS_OFF_PRINT_COLOR:=$DEFAULT_IS_OFF_PRINT_COLOR}"



#=============================
# Color
#=============================

MARK_COLOR_GREEN="\033[32m"
MARK_COLOR_RED="\033[31m"
MARK_COLOR_YELLOW="\033[33m"
MARK_COLOR_BLUE="\033[36m"
SIGN_COLOR_END="\033[0m"
MARK_COLOR_GREEN_BG="\033[42;37m"
MARK_COLOR_RED_BG="\033[41;37m"
MSG_HEAD_INFO="[ INFO ]"
MSG_HEAD_OK="[  OK  ]"
MSG_HEAD_ERROR="[FAILED]"
MSG_HEAD_WARNING="[ WARN ]"
MARK_MSG_HEAD_INFO="${MARK_COLOR_BLUE}${MSG_HEAD_INFO}${SIGN_COLOR_END}"
MARK_MSG_HEAD_OK="${MARK_COLOR_GREEN}${MSG_HEAD_OK}${SIGN_COLOR_END}"
MARK_MSG_HEAD_ERROR="${MARK_COLOR_RED}${MSG_HEAD_ERROR}${SIGN_COLOR_END}"
MARK_MSG_HEAD_WARNING="${MARK_COLOR_YELLOW}${MSG_HEAD_WARNING}${SIGN_COLOR_END}"


#==========================
# Print Colorful Text
#==========================

function print_ok () {

	if [[ "${IS_OFF_PRINT_COLOR}" == "false" ]]; then
		echo -e "${MARK_MSG_HEAD_OK} ${MARK_COLOR_BLUE} ${1} ${SIGN_COLOR_END}"
		return 0
	fi

	echo "${MSG_HEAD_OK} ${1}"
}

function print_info () {

	if [[ "${IS_OFF_PRINT_COLOR}" == "false" ]]; then
		echo -e "${MARK_MSG_HEAD_INFO} ${SIGN_COLOR_END} ${1}"
		return 0
	fi

	echo "${MSG_HEAD_INFO} ${1}"

}

function print_error () {

	if [[ "${IS_OFF_PRINT_COLOR}" == "false" ]]; then
		echo -e "${MARK_MSG_HEAD_ERROR} ${MARK_COLOR_RED} ${1} ${SIGN_COLOR_END}"
		return 0
	fi

	echo "${MSG_HEAD_ERROR} ${1}"

}

function print_warn () {

	if [[ "${IS_OFF_PRINT_COLOR}" == "false" ]]; then
		echo -e "${MARK_MSG_HEAD_WARNING} ${MARK_COLOR_YELLOW} ${1} ${SIGN_COLOR_END}"
		return 0
	fi

	echo "${MSG_HEAD_WARNING} ${1}"

}

function judge () {

	if [[ 0 -eq $? ]]; then
		print_ok "${1} succeeded"
		sleep 0.2
	else
		print_error "${1} failed"
		exit 1
	fi

}
