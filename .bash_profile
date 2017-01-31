export M2_HOME=/Users/lucasmoreira/Documents/dev/tools/apache-maven-3.3.9
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
export PATH="/usr/local/mysql/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_65.jdk/Contents/Home"
export PATH=${PATH}:$JAVA_HOME/bin

export NVM_DIR="/Users/lucasmoreira/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias ta='tmux attach -t'
alias tkss='tmux kill-session -t'
alias tksv='tmux kill-server'
alias tl='tmux list-sessions'
alias ts='tmux new-session -s'

