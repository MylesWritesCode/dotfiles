if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME "/home/myles/.pnpm/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end

starship init fish | source
enable_transience

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
zoxide init fish | source

# ld_library_path
# @note looks like if this is set and we're also using ldconfig, some programs will fail to run
# set -gx LD_LIBRARY_PATH /usr/local/cuda-12.4/lib64:/usr/local/lib/x86_64-linux-gnu:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/myles/miniconda3/bin/conda
    eval /home/myles/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/myles/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/myles/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/myles/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<
