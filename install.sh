#!/bin/sh

#variables
cr="\033[1;31m"
cg="\033[1;32m"
cb="\033[1;34m"

printf "${cg}[*] Proceeding Will Replace Your Previous Config, Make A Backup Before Running It.\n"
printf "${cr}"
read -p "[*] DO YOU WANT TO PROCEED [Y/N] " allowed
dir="$HOME/.config $HOME/Pictures/Wallpapers"

case $allowed in
  Y*|y*)
    for a in $dir; do 
      mkdir -p $a 
    done
    printf "${cg}[*] Copying Dotfiles\n"
    printf "${cb} [*] Copying Configs\n"
    cp -ra config/. ~/.config
    cp -ra home/. ~/.
    printf "${cg} [*] Configs Copied\n"
    printf "${cb} [*] Copying Wallpapers\n"
    cp -ra walls/. ~/Pictures/Wallpapers
    printf "${cg} [*] Wallpapers Copied\n"
    printf "${cg}[*] Dotfiles Installed\n";;
  *) printf "${cr}[-] Aborting!\n";;
esac
