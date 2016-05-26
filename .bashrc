#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Building android and GitFU
alias buildofficial='export PATH=~/bin:$PATH && cd ~/android/broken &&  ./build-broken.sh -c10 -p -a -z -j8 falcon'
alias builddirty='export PATH=~/bin:$PATH && cd ~/android/broken && ./build-broken.sh -c2 -p -a -z -j18 falcon'
alias buildlocal='export PATH=~/bin:$PATH && cd ~/android/broken && ./build-broken.sh -c1 -p -a -z -j8 falcon'
alias changelog='cd ~/android/broken && . build/weeklychangelog.sh && cd ~/android/Changelogs && git pull'
alias push='git push'
alias pull='git pull'
alias fetch='git fetch'
alias remote='git remote add'
alias config='nano .git/config'
alias reset='git reset --hard'
alias pick='git cherry-pick'
alias continue='git cherry-pick --continue'
alias add='git add -A'
alias commit='git commit'
alias forget='git rerere forget'
alias ..='cd ..'
alias sync='cd ~/android/broken && repo sync -j10 --force-sync'
alias cdfalcon='cd ~/android/broken/device/motorola/falcon'
alias cdcommon='cd ~/android/broken/device/motorola/msm8226-common'
alias cdkernel='cd ~/android/broken/kernel/motorola/msm8226'


#Arch Stuff

alias ins='sudo pacman -S'
alias rem='sudo pacman -Rns'
alias update='sudo pacman -Syu'
alias wifi='sudo wifi-menu'
alias extract='tar -xvf'
alias build='makepkg -s'
alias aur='sudo pacman -U'
alias pacdel='paccache -r' #delete pacman package cache 
alias grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ls='ls --color=auto'
alias unzip='7za e'
alias pythonswitch='sudo bbqlinux-python-switcher'
alias cdaur='cd ~/aur'
alias enable='sudo systemctl enable'
alias disable='sudo systemctl disable'
alias failed='systemctl --failed'
alias status='systemctl status'
alias analyze='systemd-analyze'

PS1='[\u@\h \W]\$ '
export USE_CCACHE=1
export EDITOR="nano"
export TERMINAL="termite"
LANG=C
