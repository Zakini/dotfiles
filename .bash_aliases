#!/usr/bin/env bash

eval $(thefuck --alias)
eval $(thefuck --alias f)

alias fin='printf '"'\\a'"''

alias clip='xclip -sel clip'

function artisan() {
    if [[ -f artisan ]]; then
        php artisan "$@"
    elif [[ -f please ]]; then
        php please "$@"
    else
        echo "artisan or please not found" >&2
    fi
}

function please() {
    if [[ -f please ]]; then
        php please "$@"
    else
        echo "please not found" >&2
    fi
}

alias tinker='artisan tinker'
alias phpunit='vendor/bin/phpunit'

alias hartisan='homestead artisan'
alias htinker='hartisan tinker'
alias hphpunit='homestead cmd vendor/bin/phpunit'
alias hxon='homestead cmd xon'
alias hxoff='homestead cmd xoff'
