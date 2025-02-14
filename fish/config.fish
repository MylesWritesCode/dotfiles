if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init --cmd cd fish | source # zoxide, a better cd
starship init fish | source # prettify the shell
mise activate fish | source # tool manager

# pnpm
set -gx PNPM_HOME "/home/myles/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
