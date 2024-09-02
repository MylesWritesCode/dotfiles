if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME "/home/myles/.pnpm/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# pyenv
set -gx PYENV_ROOT $HOME/.pyenv
pyenv init - | source

# zoxide, a better cd
zoxide init --cmd cd fish | source

starship init fish | source

# pnpm
set -gx PNPM_HOME "/home/myles/.pnpm/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
