#!/bin/bash

readonly CURRENT_DIR="$(
	dirname "${BASH_SOURCE[0]:-$0}"
)"
readonly SRC_DIR="${CURRENT_DIR}/.config"
readonly SRC_FILES=(
	"$(find "${SRC_DIR}" -type f)"
)
readonly DEST_DIR="${HOME}/.config"

function _install_dein() {
	readonly DEIN_CACHE_DIR="${HOME}/.cache/dein"
	readonly DEIN_INSTALLER="/tmp/dein_installer.sh"
	curl -sL https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh >"${DEIN_INSTALLER}"
	chmod +x "${DEIN_INSTALLER}"
	"${DEIN_INSTALLER}" "${DEIN_CACHE_DIR}"
}

function _install_packages() {
    :
	#sudo pacman -S --needed - <"${CURRENT_DIR}/PKGLIST"
}

function _set_symlinks() {
	for src in ${SRC_FILES[@]}; do
		dest="${src/${SRC_DIR}/${DEST_DIR}/}"

		dest_dir="$(dirname "${dest}")"
		_verbose "Create directory: ${dest_dir}"
		mkdir -p "${dest_dir}"

		_verbose "Create symlink:   ${src} --> ${dest}"
		ln -sf "${src}" "${dest}"
	done
}

function _main() {
    _banner "Install packages"
	_install_packages
	_info "Finished packages installation!"

    _banner "Install config files"
	_set_symlinks
	_info "Finished config files installation!"

    _banner "Install dein.vim"
	_install_dein
	_info "Finished dein.vim installation!"
}

function _verbose() {
	printf "[ \e[34;1mVERBOSE\e[m ] %s\n" "${*}"
}

function _info() {
	printf "[ \e[36;1mINFO\e[m ] %s\n" "${*}"
}

function _err() {
	printf "[ \e[31;1mERR\e[m ] %s\n" "${*}"
}

function _banner() {
	echo -e "
\e[1m#####################################\e[m
\e[1m# ${*} \e[m
\e[1m#####################################\e[m
"
}

_main "${@}"
