alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias t="tree --dirsfirst -L 1"
alias tt="tree --dirsfirst -L 2"
alias ls="ls --group-directories-first -p1"

function chrome {
  currentDir=$(pwd)
  ubuntuDir="file://wsl%24/Ubuntu"
  /mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe --auto-open-devtools-for-tabs $ubuntuDir$currentDir/$1
}
