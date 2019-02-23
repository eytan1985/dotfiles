#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups
export VISUAL=emacs

PS1='[\u@\h \W]\$ '

if [ -d "$HOME/.bin" ] ;
	then PATH="$HOME/.bin:$PATH"
fi

## add my scripts to path
export PATH=~/progs/scripts:$PATH

## list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls' 					
alias l.="ls -A | egrep '^\.'"      

## fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## readable output
alias df='df -h'

## pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

## free
alias free="free -mt"

## continue download
alias wget="wget -c"

## userlist
alias userlist="cut -d: -f1 /etc/passwd"

## merge new settings
alias merge="xrdb -merge ~/.Xresources"

# Aliases for software managment
# pacman or pm
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'
alias pkglist='sudo pacman -Qe | less'

# yay as aur helper - updates everything
alias pksyua="yay -Syu --noconfirm"

## ps
alias ps="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

## grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

## improve png
alias fixpng="find . -type f -name "*.png" -exec convert {} -strip {} \;"

## add new fonts
alias fc='sudo fc-cache -fv'

## copy/paste all content of /etc/skel over to home folder - Beware
alias skel='cp -rf /etc/skel/* ~'

## quickly kill conkies
alias kc='killall conky'

## hardware info --short
alias hw="hwinfo --short"

## get fastest mirrors in your neighborhood 
alias mirror="sudo reflector --protocol https --latest 50 --number 20 --sort rate --save /etc/pacman.d/mirrorlist"
alias mirrors=mirror

## mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

## adjust touchpad sensitivity
xinput --set-prop $(xinput | grep 'DELL.*Touchpad' | awk '{print $6}' | sed 's/id=//g') 'libinput Accel Speed' 0.5

## navigation 
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear && ls'
alias c='clear'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

## delete files
alias rm='rm -i'

## i3 configuration
alias i3conf='vim ~/.config/i3/config'

#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases

neofetch


