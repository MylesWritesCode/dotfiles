# Prevent scroll-while-typing with wezterm and nushell
# @source https://github.com/nushell/nushell/issues/5585
$env.config.shell_integration.osc133 = true

zoxide init nushell | save -f ~/.zoxide.nu

