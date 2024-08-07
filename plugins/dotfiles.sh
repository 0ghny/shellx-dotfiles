export DOTFILES_HOME="${DOTFILES_HOME:-${SHELLX_PLUGINS_DOTFILES_HOME:-$HOME/.dotfiles}}"

function dotfiles() {
    git --git-dir="${DOTFILES_HOME}" --work-tree="${HOME}" $argv
}

function get-dotfiles() {
    if [[ -z $1 ]]; then
        echo "Usage: get-dotfiles <repo>"
        return 1
    fi

    echo "Cloning dotfiles from $1"
    git clone --bare "$1" "${DOTFILES_HOME}"

    echo "Backup current dotiles that will be overwritten in your home directory"
    mkdir -p .dotfiles-backup && \
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
    xargs -I{} mv {} .dotfiles-backup/{}

    echo "Setting showUntrackedFiles to no"
    dotfiles config --local status.showUntrackedFiles no
}

function dotfiles-update() {
    dotfiles checkout
}
