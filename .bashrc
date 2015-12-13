#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Building android
alias buildclean='export PATH=~/bin:$PATH && cd ~/android/brokenm &&  ./build-broken.sh -c1 -p -s -z -j8 falcon'
alias builddirty='export PATH=~/bin:$PATH && cd ~/android/brokenm &&  ./build-broken.sh -c2 -p -z -j8 falcon'
alias buildlocal='export PATH=~/bin:$PATH && cd ~/android/brokenm &&  ./build-broken.sh -c1 -p -z -j8 falcon'
alias changelog='cd ~/android/brokenm && . build/weeklychangelog.sh && cd ~/android/Changelogs && git pull'
alias push='git push'
alias reset='git reset --hard'
alias pick='git cherry-pick'
alias add='git add -A'
alias commit='git commit'
alias ..='cd ..'
alias sync='cd ~/android/brokenm && repo sync -j8 --force-sync'
alias cdfalcon='cd ~/android/brokenm/device/motorola/falcon'
alias cdcommon='cd ~/android/brokenm/device/motorola/msm8226-common'
alias cdkernel='cd ~/android/brokenm/kernel/motorola/msm8226'

#Arch Stuff

alias ins='sudo pacman -S'
alias update='sudo aura -Akua'
alias rem='sudo pacman -Rns'
alias wifi='sudo wifi-menu'
alias extract='tar -xvf'
alias build='makepkg -s'
alias aur='sudo pacman -U'
alias pacdel='paccache -r' #delete pacman package cache 
alias grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ls='ls --color=auto'
alias unzip='7za e'
alias pythonswitch='sudo bbqlinux-python-switcher'

PS1='[\u@\h \W]\$ '
export USE_CCACHE=1
export EDITOR="nano"
minidlnad -f /home/rob/.config/minidlna/minidlna.conf -P /home/rob/.config/minidlna/minidlna.pid
LANG=C
