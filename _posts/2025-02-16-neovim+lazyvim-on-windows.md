---
title: "Neovim+Lazyvim on Windows"
date: 2025-02-16 20:52:46
categories: [setup]
tags: [neovim,windows,powershell]
author: rishabh
---

I've been using Neovim for quite some time, and it has proven to be an exceptional tool for development. Its flexibility and efficiency make it a favorite among developers. Alongside Neovim, I've been utilizing Lazyvim, a fantastic plugin that simplifies the management of Neovim plugins. In this post, I'll guide you through the process of setting up Neovim and Lazyvim on Windows, specifically using PowerShell.

## Powershell Setup

### Nerd Font
Nerd Font is recommended for an enhanced experience with Neovim. I prefer the Cascadia Code Mono Nerd Font, which can be installed using `scoop`:

```
scoop install nerd-fonts/CascadiaCode-NF-Mono
```

### Oh My Posh.

I prefer [Oh My Posh](https://ohmyposh.dev/) for an enhanced terminal experience. You can easily install it using `scoop`:


```powershell
scoop install oh-my-posh
```

To further configure your terminal you can refer the [Oh My Posh](https://ohmyposh.dev/docs/) documentation.

## Neovim setup

You can install Neovim using `winget`. Which is default package installer for windows.

```powershell
winget install neovim
```

This will create a nvim folder in your LocalData folder. somthin similar to `C:\Users\<Your_User_Name>\AppData\Local\nvim`

### Lazyvim
For Lazyvim setup refer the installation instructions from [here](https://www.lazyvim.org/installation/)
To add plugins and configure your lazyvim refer the files in `C:\Users\<Your_User_Name>\AppData\Local\nvim` folder.

> **_NOTE:_** For neovim to fetch lazyvim config `XDG_CONFIG_HOME` should be set to `C:\Users\<Your_User_Name>\AppData\Local`


