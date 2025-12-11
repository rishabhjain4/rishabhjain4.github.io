---
title: "Setting Up Ubuntu or WSL for Zsh + Oh My Zsh + Neovim (LazyVim)"
date: 2025-12-11 20:42:35
categories: [setup]
tags: [zsh,wsl,ubuntu]
author: rishabh
---

This is just a quick reference for commands to set up development environment on **Ubuntu** or **WSL**. You will install **Zsh**, **Oh My Zsh**, **Powerlevel10k**, **NerdFonts**, and **Neovim with LazyVim**.

The steps work for both Ubuntu Desktop and WSL.

## 1. Install Zsh

``` bash
sudo apt update
sudo apt install zsh -y
```

------------------------------------------------------------------------

## 2. Install Oh My Zsh

``` bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

------------------------------------------------------------------------

## 3. Install Nerd Fonts

Nerd Fonts enable icons for Powerlevel10k and Neovim.

### Ubuntu Desktop

``` bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaMono.zip
unzip CascadiaMono.zip
fc-cache -fv
```

### WSL Users

Install the font directly in **Windows**, then set it in Windows
Terminal → Settings → Ubuntu → Font face.

------------------------------------------------------------------------

## 4. Install Powerlevel10k

``` bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git   ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

Edit `.zshrc`:

``` bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

------------------------------------------------------------------------

## 5. Switch to Zsh

``` bash
exec zsh
```

------------------------------------------------------------------------

## 6. Configure Powerlevel10k

``` bash
p10k configure
```

------------------------------------------------------------------------

## 7. Install Neovim from GitHub

``` bash
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
tar xvf nvim-linux64.tar.gz
```

------------------------------------------------------------------------

## 8. Move Neovim to `/opt/nvim`

``` bash
sudo mv nvim-linux64 /opt/nvim
```

------------------------------------------------------------------------

## 9. Add Neovim to PATH

``` bash
echo 'export PATH="/opt/nvim/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

------------------------------------------------------------------------

## 10. Install LazyVim

Backup old config:

``` bash
mv ~/.config/nvim ~/.config/nvim.bak
```

Install:

``` bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

Run nvim and let Lazyvim install the plugins.

``` bash
nvim
```

------------------------------------------------------------------------

## 11. Install Required Tools


``` bash
sudo add-apt-repository ppa:lazygit-team/release -y && \
sudo apt update && \
sudo apt install -y ripgrep fd-find luarocks lazygit build-essential && \
```

Open nvim and perform Health check:

    :checkhealth

Check for the missing tools. Install Node.

------------------------------------------------------------------------

## Extra Notes for WSL Users

- Install fonts in **Windows**, not Linux.
- Clipboard support:

``` bash
sudo apt install xclip wl-clipboard -y
```
