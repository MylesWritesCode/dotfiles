if status is-interactive
    # Commands to run in interactive sessions can go here
end

oh-my-posh init fish --config ~/.config/oh-my-posh/tomorrow-night-bright.json | source

# pnpm
set -gx PNPM_HOME /Users/melllbby/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# starship init fish | source
