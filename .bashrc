# Custom aliases
alias ll="ls -la"
alias la="ls -a"
alias atom="open -a Atom.app"

# git completion
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
else
  # download the file from github
  echo "Downloading git completion file from github"
  curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
  source ~/.git-completion.bash
fi

# git prompt
if [ -f ~/.git-prompt.bash ]; then
  source ~/.git-prompt.bash
else
  # download the file from github
  echo "Downloading git prompt file from github"
  curl -o ~/.git-prompt.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
  source ~/.git-prompt.bash
fi

source ~/.git-prompt.bash
echo "Setting up the prompt variable"
PS1='[\u: \W$(__git_ps1 " {%s}")]\$ '

# Please shut up about the z shell
export BASH_SILENCE_DEPRECATION_WARNING=1
