if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init --cmd cd fish | source # zoxide, a better cd
starship init fish | source # prettify the shell
mise activate fish | source # tool manager
