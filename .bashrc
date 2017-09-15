#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Building android

#Reaper

alias forcesyncreaper='export PATH=~/bin:$PATH && cd ~/android/reaper && repo sync -j8 --force-sync'
alias syncreaper='export PATH=~/bin:$PATH && cd ~/android/reaper && repo sync -j8'
alias buildofficialreaper='export PATH=~/bin:$PATH && cd ~/android/reaper &&  ./build-death.sh -c10 -j8 falcon'
alias builddirtyreaper='export PATH=~/bin:$PATH && cd ~/android/reaper && ./build-death.sh -c2 -j8 falcon'
alias buildlocalreaper='export PATH=~/bin:$PATH && cd ~/android/reaper && ./build-death.sh -c1 -j8 falcon'
alias makekernelreaper='export PATH=~/bin:$PATH && cdkernel && make clean && make mrproper && cd ~/android/reaper &&  . build/envsetup.sh && lunch reaper_falcon-userdebug && make bootzip'
alias makecleanreaper='export PATH=~/bin:$PATH && cd ~/android/reaper &&  . build/envsetup.sh && make clean'
alias makeclobberreaper='export PATH=~/bin:$PATH && cd ~/android/reaper &&  . build/envsetup.sh && make clobber'

#Broken
alias forcesyncbroken='export PATH=~/bin:$PATH && cd ~/android/brokenn && repo sync -j8 --force-sync'
alias syncbroken='export PATH=~/bin:$PATH && cd ~/android/brokenn && repo sync -j8'
alias buildofficialbroken='export PATH=~/bin:$PATH && cd ~/android/brokenn &&  ./build-broken.sh -c10 -j8 falcon'
alias builddirtybroken='export PATH=~/bin:$PATH && cd ~/android/brokenn && ./build-broken.sh -c2 -j8 falcon'
alias buildlocalbroken='export PATH=~/bin:$PATH && cd ~/android/brokenn && ./build-broken.sh -c1 -j8 falcon'
alias makecleanbroken='export PATH=~/bin:$PATH && cd ~/android/brokenn &&  . build/envsetup.sh && make clean'
alias makeclobberbroken='export PATH=~/bin:$PATH && cd ~/android/brokenn &&  . build/envsetup.sh && make clobber'

#GitFU and Misc
alias jack-admin='sh prebuilts/sdk/tools/jack-admin'
alias kill-server='sh prebuilts/sdk/tools/jack-admin kill-server'
alias start-server='sh prebuilts/sdk/tools/jack-admin start-server'
alias lunch='. build/envsetup.sh && lunch'
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
export FUCK_XDA=true

#Arch Stuff

alias ins='sudo pacman -S'
alias rem='sudo pacman -Rns'
alias update='sudo pacman -Syu'
alias wifi='sudo wifi-menu'
alias wifirestart="sudo systemctl restart netctl-auto@wlp2s0.service"
alias extract='tar -xvf'
alias build='makepkg -sric'
alias pacdel='paccache -r' #delete pacman package cache 
alias paclist='pacman -Qei | awk '/^Name/ { name=$3 } /^Groups/ { if ( $3 != "base" && $3 != "base-devel" ) { print name } }'' #list packages installed that are not in base/base-devel
alias grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ls='ls --color=auto'
alias unzip='7za e'
alias pythonswitch='sudo bbqlinux-python-switcher'
alias javaswitch='sudo bbqlinux-java-switcher'
alias cdaur='cd ~/aur'
alias enable='sudo systemctl enable'
alias disable='sudo systemctl disable'
alias failed='systemctl --failed'
alias pass='systemctl --pass'
alias startbluetooth='sudo systemctl start bluetooth.service'
alias stopbluetooth='sudo systemctl stop bluetooth.service'
alias restart='sudo systemctl restart'
alias status='systemctl status'
alias analyze='systemd-analyze'
alias blame='systemd-analyze blame'
alias bashrc='nano ~/.bashrc'
alias error='sudo journalctl -b0 -p err..alert'
alias wired='sudo dhcpcd enp3s0f1'
alias stopwifi='sudo systemctl stop netctl-auto@wlp2s0.service '
alias wifiup='sudo ip link set wlp2s0 up'
alias wididown='sudo ip link set wlp2s0 down'

alias g='geany'
DIFFPROG='geany'
export DIFFPROG
PS1='[\u@\h \W]\$ '
export USE_CCACHE=1
export EDITOR="nano"
export TERMINAL="termite"
LANG=C
alias sudo='sudo '
