# Nushell Config File
#
# version = "0.99.1"

# For more information on defining custom themes, see
# https://www.nushell.sh/book/coloring_and_theming.html
# And here is the theme collection
# https://github.com/nushell/nu_scripts/tree/main/themes

$env.config = {
    show_banner: false # true or false to enable or disable the welcome banner at startup

    table: {
        mode: thin 
    }
}

def ll [] {
  ls | sort-by type | reverse
}

use ~/.cache/starship/init.nu
source ~/.zoxide.nu
