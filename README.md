# tmux-cryptomilk-theme

Powerline-styled tmux theme

Based on [tmux-dark-plus-theme](https://github.com/khanghh/tmux-dark-plus-theme)

## Installation

### Install using [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

1. Add plugin to the list of TPM plugins in `.tmux.conf`:

        set -g @plugin 'cryptomilk/tmux-cryptomilk'

2. Hit `prefix + I` to fetch the plugin and source it. The theme should now be working.

### Install manually

1. Clone repo to local machine:

        git clone https://github.com/cryptomilk/tmux-cryptomilk \
            ~/.config/tmux/themes/tmux-cryptomilk

2. Add this line to the bottom of your `~/.tmux.conf`:

        run-shell "~/.config/tmux/themes/tmux-cryptomilk/cryptomilk.tmux"

3. Reload your `~/.tmux.conf`:

        tmux source-file ~/.tmux.conf

## License

MIT
