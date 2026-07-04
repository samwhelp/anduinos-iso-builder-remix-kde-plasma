#!/usr/bin/env bash


#=============================
# Module
#=============================

function core_check_permission () {

	if [ $(id -u) -ne 0 ]; then
		print_error "This script should be run as 'root'"
		exit 1
	fi

}

function core_var_dump () {

	print_info "Dump skeleton variables ..."

	echo "GEAR_DIR_PATH=${GEAR_DIR_PATH}"
	echo "LIBS_DIR_PATH=${LIBS_DIR_PATH}"
	echo "PLAN_DIR_PATH=${PLAN_DIR_PATH}"

	echo "SOURCE_ISO_PROFILE_DIR_PATH=${SOURCE_ISO_PROFILE_DIR_PATH}"
	echo "TARGET_ISO_PROFILE_DIR_PATH=${TARGET_ISO_PROFILE_DIR_PATH}"

	echo "SUBJECT_DIR_NAME=${SUBJECT_DIR_NAME}"
	echo "TMP_DIR_PATH=${TMP_DIR_PATH}"
	echo "WORK_DIR_PATH=${WORK_DIR_PATH}"


	judge "Dump skeleton variables"

}

function core_building_var_dump () {

	print_info "Dump building variables ..."

	echo "SUBJECT_NAME=${SUBJECT_NAME}"
	echo "TMP_DIR_PATH=${TMP_DIR_PATH}"

	echo "MASTER_ISO_PROFILE_REPO_GIT_URL=${MASTER_ISO_PROFILE_REPO_GIT_URL}"
	echo "MASTER_ISO_PROFILE_REPO_BRANCH_NAME=${MASTER_ISO_PROFILE_REPO_BRANCH_NAME}"

	echo "MASTER_ISO_PROFILE_REPO_ARCHIVE_FILE_EXT_NAME=${MASTER_ISO_PROFILE_REPO_ARCHIVE_FILE_EXT_NAME}"

	echo "MASTER_ISO_PROFILE_REPO_ARCHIVE_FILE_NAME=${MASTER_ISO_PROFILE_REPO_ARCHIVE_FILE_NAME}"
	echo "MASTER_ISO_PROFILE_REPO_ARCHIVE_EXTRACT_DIR_NAME=${MASTER_ISO_PROFILE_REPO_ARCHIVE_EXTRACT_DIR_NAME}"

	echo "MASTER_ISO_PROFILE_REPO_ARCHIVE_URL=${MASTER_ISO_PROFILE_REPO_ARCHIVE_URL}"

	judge "Dump building variables"

}

function core_create_skeleton_dir () {

	local work_dir_path="${WORK_DIR_PATH}"

	print_info "Create Skeleton Dir ..."
	echo mkdir -p "${work_dir_path}"
	mkdir -p "${work_dir_path}"
	judge "Create Skeleton Dir"

}


function sys_prepare_package_for_build () {

	print_info "Install package for build ..."
	local run_cmd="sudo apt install -y --install-recommends git wget"
	echo ${run_cmd}
	${run_cmd}
	judge "Install package for build"

}

function mod_prepare () {

	##
	##core_var_dump
	##core_building_var_dump
	##exit 0;
	##

	sys_prepare_package_for_build

}

function mod_download_source_repository_via_git () {

	local target_iso_profile_dir_path="${TARGET_ISO_PROFILE_DIR_PATH}"

	local repo_url="${MASTER_ISO_PROFILE_REPO_GIT_URL}"

	local branch_name="${MASTER_ISO_PROFILE_REPO_BRANCH_NAME}"

	print_info "Download Source Repository ..."

	if [ -a "${target_iso_profile_dir_path}" ]; then
		echo
		echo "##"
		echo "## ## Dir Exist:"
		echo "##"
		echo
		echo "${target_iso_profile_dir_path}"
		echo
		echo "##"
		echo "## ## Please Remove First:"
		echo "##"
		echo
		echo "rm -rf ${target_iso_profile_dir_path}"
		echo
		exit 0
	fi

	echo git clone -b "${branch_name}" "${repo_url}" "${target_iso_profile_dir_path}"
	git clone -b "${branch_name}" "${repo_url}" "${target_iso_profile_dir_path}"
	judge "Download Source Repository"

}

function mod_download_source_repository_via_wget () {

	local target_iso_profile_dir_path="${TARGET_ISO_PROFILE_DIR_PATH}"

	print_info "Download Source Repository ..."

	if [ -a "${target_iso_profile_dir_path}" ]; then
		echo
		echo "##"
		echo "## ## Dir Exist:"
		echo "##"
		echo
		echo "${target_iso_profile_dir_path}"
		echo
		echo "##"
		echo "## ## Please Remove First:"
		echo "##"
		echo
		echo "rm -rf ${target_iso_profile_dir_path}"
		echo
		exit 0
	fi

	local repo_url="${MASTER_ISO_PROFILE_REPO_ARCHIVE_URL}"

	local target_iso_profile_dir_path="${TARGET_ISO_PROFILE_DIR_PATH}"

	local work_dir_path="${WORK_DIR_PATH}"

	local archive_file_path="${work_dir_path}/${MASTER_ISO_PROFILE_REPO_ARCHIVE_FILE_NAME}"

	local archive_extract_dir_path="${work_dir_path}/${MASTER_ISO_PROFILE_REPO_ARCHIVE_EXTRACT_DIR_NAME}"

	rm -f "${archive_file_path}"

	wget -c "${repo_url}" -O "${archive_file_path}"

	tar -C "${work_dir_path}" -xf "${archive_file_path}"

	mv "${archive_extract_dir_path}" "${target_iso_profile_dir_path}"

	judge "Download Source Repository"

}

function mod_combine_iso_profile () {

	local source_dir_path="${SOURCE_ISO_PROFILE_DIR_PATH}"
	local target_dir_path="${TARGET_ISO_PROFILE_DIR_PATH}"

	print_info "Combine ISO Profile ..."
	echo cp -rfT "${source_dir_path}" "${target_dir_path}"
	cp -rfT "${source_dir_path}" "${target_dir_path}"
	##cp -rfTv "${source_dir_path}" "${target_dir_path}"
	judge "Combine ISO Profile"

}

function mod_tips_combine_ok () {

	local target_iso_profile_dir_path="${TARGET_ISO_PROFILE_DIR_PATH}"

	print_ok "Combine OK"

	echo
	echo "##"
	echo "## ## Next Step:"
	echo "##"
	echo
	echo "cd ${target_iso_profile_dir_path}"
	echo

}




#=============================
# Model
#=============================

function model_prepare () {

	print_info "model_prepare"
	mod_prepare
	judge "model_prepare"

}

function model_combine_via_git () {

	print_info "model_combine_via_git"

	core_create_skeleton_dir

	mod_download_source_repository_via_git

	mod_combine_iso_profile

	judge "model_combine_via_git"

	mod_tips_combine_ok

}

function model_combine_via_wget () {

	print_info "model_combine_via_wget"

	core_create_skeleton_dir

	mod_download_source_repository_via_wget

	mod_combine_iso_profile

	judge "model_combine_via_wget"

	mod_tips_combine_ok

}


function model_only_combine () {

	print_info "model_only_combine"

	core_create_skeleton_dir

	mod_combine_iso_profile

	judge "model_only_combine"

	mod_tips_combine_ok
}

