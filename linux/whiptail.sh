#!/bin/bash

set -Eeuo pipefail
options=(op1 "" op2 "" op3 "" op4 "")

function get_credentials {
    name=$(whiptail --inputbox "Name" 8 78 --title "Username" 3>&1 1>&2 2>&3)
    [ ! -z "${name:-}" ] || return 1
    lastname=$(whiptail --inputbox "Lastname" 8 78 --title "User lastname" 3>&1 1>&2 2>&3)
    [ ! -z "${lastname:-}" ] || return 1
    password=$(whiptail --passwordbox "Password for sir $name $lastname" 8 78 --title "Password" 3>&1 1>&2 2>&3)
    [ ! -z "${password:-}" ] || return 1
}

function select_option {
   option=$(whiptail --menu "Select option" 20 40 10 "${options[@]}" 3>&2 2>&1 1>&3)
   [ ! -z "${option:-}" ] || return 1
}

get_credentials || exit 1
select_option || exit 1
