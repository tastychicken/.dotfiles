# Requirements

## Git

Version control

```bash
sudo pacman -S git
```

## GNU Stow

Manages symlinks to all our configuration files.

```bash
sudo pacman -S stow
```

# Packages

## Base Packages

```bash
sudo pacman -S alacritty
sudo pacman -S zsh
sudo pacman -S tmux
sudo pacman -S neovim
sudo pacman -S neofetch

sudo pacman -S curl
sudo pacman -S jq
sudo pacman -S tree
sudo pacman -S playerctl
sudo pacman -S wl-clipboard

sudo pacman -S appimagelauncher
```

## Other stuff

### Oh-My-Zsh
Theming and Zsh config
https://github.com/ohmyzsh/ohmyzsh

### NerdFonts
Fonts with icons for terminal
https://www.nerdfonts.com/

## Gnome settings

#### Nightlight
Go to 'Settings', click on 'Displays' and enable 'Night Light'.

### Enable minimize/maximize buttons on windows
```bash
sudo pacman -S gnome-tweaks
```
Run 'tweaks', go to 'Windows' and enable 'Maximise' and 'Minimise' under 'Titlebar Buttons'.

### Extensions
- AppIndicator and KStatusNotifierItem Support: https://extensions.gnome.org/extension/615/appindicator-support/
- Blur my Shell: https://extensions.gnome.org/extension/3193/blur-my-shell/
- Dash to Dock: https://extensions.gnome.org/extension/307/dash-to-dock/
- Searchlight: https://extensions.gnome.org/extension/5489/search-light/
- Vitals: https://extensions.gnome.org/extension/1460/vitals/

# Neovim

TODO:
- nvim-autopairs
- lualine
- markdown-preview
- TRY OUT: gruvbox

TODO (LSP):
- trouble
- lsp-zero

# OhMyZsh

TODO:
- TRY OUT: gruvbox: https://github.com/sbugzu/gruvbox-zsh

# TMUX

TODO:
- TRY OUT: gruvbox: https://github.com/egel/tmux-gruvbox
