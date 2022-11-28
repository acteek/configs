
source $ZSH/oh-my-zsh.sh

# Path to your oh-my-zsh installation.
  export ZSH=/Users/acteek/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
 ZSH_THEME=robbyrussell

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="mm/dd/yyyy"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  golang
  kubectl
  sbt
  timer
  extract
  docker
  helm
)


export EDITOR='vim'

eval "$(starship init zsh)"

export KUBECONFIG=$KUBECONFIG:~/.kube/config-aws96-c01-kbm10

# Colima with docker testcontainers
export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock
export DOCKER_HOST="unix://${HOME}/.colima/docker.sock"
export TESTCONTAINERS_RYUK_DISABLED=true
