local return_code="%(?..%{$fg[red]%}%? ↵  😭%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}♦️  $(rbenv version | sed -e "s/ (set.*$//")%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="👾 💩 😎 ${current_dir} ${rvm_ruby} ${git_branch}
"
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="🌱  %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
