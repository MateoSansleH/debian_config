#!/bin/sh

utilisateur = administrateur

install_all_needed_package(){
	apt-get update && apt-get upgrade
	apt-get install screen
	apt-get install nano
	apt-get install vim
}

delete_cdrom_sources(){
	sed -i 's/^deb cdrom.*/# deb cdrom/g' /etc/apt/sources.liste
}

add_sudoUSR{
	usermod -g sudo $utilisateur
}

main(){
	delete_cdrom_sources
	install_all_needed_package
	add_sudoUSR
}

main



