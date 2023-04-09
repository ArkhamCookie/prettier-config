#!/bin/sh
prefer_pnpm="1"
config_pkg='@arkhamcookie/prettier-config'

print_help() {
    printf "\n"
}

command -v npm >> /dev/null || return 2
command -v pnpm >> /dev/null && _pnpm_installed="true"

if [ "$_pnpm_installed" = true ] && [ "$prefer_pnpm" -ge 1 ]; then
    pnpm add -D "$config_pkg"
    pnpm dlx install-peerdeps --dev "$config_pkg"
    config_installed="true"
else
    npm i -D "$config_pkg"
    npx install-peerdeps --dev "$config_pkg"
    config_installed="true"
fi

if [ "$config_installed" = true ] && [ ! -f "./.prettierrc" ]; then
    
elif [ "$config_installed" = true ] && [ -f "./prettierrc" ]; then
    printf "A Prettier config file already exists, do you wish to override it? [y/n] "
    read -r yesno
    if [ "$yesno" = 'y' ] || [ "$yesno" = 'Y' ]; then
        printf "{\n\t\"%s\"\n}" "$config_pkg" > ./.prettierrc || return 1
    else
        printf "\n Aborting...\n"
        return 1
    fi
fi