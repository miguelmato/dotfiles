# case insensitive tab autocomplete
# autoload -Uz compinit && compinit
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

export PATH=$PATH:~/Developer/flutter/bin
export PATH="$PATH":"$HOME/.pub-cache/bin"

export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

alias ..='cd ..'
alias ...='cd ../..'

alias lsa='ls -a'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias cat='bat'

alias rmr='rm -r'
alias ls-non-apple='ls | grep -v com.apple'

alias cls='clear; printf "\033[3J"'

alias zshrc='nano ~/.zshrc'
alias reload='source ~/.zshrc'

alias ssd='smartctl -a /dev/disk0'

alias ios="open -a Simulator"
alias sim-android="/Users/miguel/Library/Android/sdk/emulator/emulator -avd Pixel_API_33"
android () {
	PORT=5555
	ANDROID_IP=`adb shell ip addr show wlan0  | grep 'inet ' | cut -d ' ' -f 6 | cut -d / -f 1`
	adb tcpip $PORT
	adb connect $ANDROID_IP:$PORT
}

eval "$(starship init zsh)"
