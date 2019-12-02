ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
# # ZSH_THEME="cobalt2"
ZSH_THEME="shades-of-purple"

# Useful plugins for Rails development with Sublime Text
plugins=(gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search)

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Load rbenv if installed
export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"

# Load zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Cellar
export PATH="/usr/local/Cellar/node/11.10.0/bin:${PATH}"



# MacVim path
export PATH=$PATH:/Applications/MacVim.app/Contents/bin

alias ngrok="~/ngrok"
alias aws-dkbz='ssh -i /Users/Ignacio/Downloads/nacho_creds/temp-schlep.pem ubuntu@ec2-13-59-122-245.us-east-2.compute.amazonaws.com'
alias cms-dkbz='ssh -i ~/.ssh/cms-dkbz-single.pem ubuntu@18.221.148.228'
alias ssh-do='ssh deploy@134.209.59.50'
alias hrc='heroku run rails c'
alias undo_commit='git reset HEAD~ --soft && git reset HEAD'
