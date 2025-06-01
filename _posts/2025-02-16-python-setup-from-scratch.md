---
title: "Python Setup From Scratch"
date: 2025-02-16 20:04:32
categories: [setup]
tags: [python, windows, linux]
author: rishabh
---

After working across multiple operating systems and environments, I've developed a standard setup for Python development. This setup isn't just for Python; it can be applied to any development environment. I've divided the setup into several sections for better understanding. While I've used Conda for managing Python environments, I've encountered issues managing both project-specific and global Python environments.

## Choose your Terminal

Nowadays, we have a variety of terminals to choose from for Linux and Windows platforms. I personally prefer WezTerm for Linux and PowerShell for Windows. However, these commands will work on any terminal you choose. I also recommend customizing your terminal to your liking.

For Windows:

- Check for latest version for powershell [here](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows)

## Package installer

For Linux, we have apt-get. For Windows, there are options like winget, Scoop, and Chocolatey. I personally prefer apt-get for Linux and [Scoop](https://scoop.sh/) for Windows. For macOS, we have Homebrew. Both Linux and macOS come with their package managers pre-installed.

For windows:

Install scoop using the below command:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

## Install pipx

[pipx](https://pipx.pypa.io/stable/) is a tool for installing Python packages in isolated environments. It's a great tool for managing Python CLI tools globally without affecting other Python environments.

- mac-os

```bash
brew install pipx
pipx ensurepath
```

- linux/ubuntu

```bash
sudo apt update
sudo apt install pipx
pipx ensurepath
```

- Windows

```powershell
scoop install pipx
pipx ensurepath
```

`pipx ensurepath` makes sure that your environment variables are updated to fetch pipx from anywhere.

## Virtual environment manager

I personally prefer [pyenv](https://github.com/pyenv/pyenv) because it's easy to use and manage Python environments. It's a great tool for managing Python versions and environments. Pyenv also helps install specific Python versions to meet your project's requirements.

- mac-os

```bash
brew install pyenv
```

- linux/ubuntu

```bash
curl -fsSL https://pyenv.run | bash
```

- Windows
  For windows we use [pyenv-win](https://github.com/pyenv-win/pyenv-win). You can install it using scoop.

```powershell
scoop install pyenv
```

## Project management tool

[Poetry](https://python-poetry.org/) is a great tool to manage python projects. It helps to manage dependencies, virtual environments, and build tools. It is a great tool to manage python projects.

Initially, I used to create virtual environments with venv, create requirements.txt files, and install packages using pip or Conda. However, managing dependencies and virtual environments was a tedious task. Poetry has made it easy to manage Python projects. It offers features like publishing packages to PyPI, building packages, testing, and more. I can also separate packages used for development, testing, and production.

- mac-os/linux/windows

```bash
pipx install poetry
```

## Jupyter setup

Jupyter is an excellent tool for writing and executing Python code. It's widely used for data analysis, machine learning, deep learning, and more. I use Jupyter for writing Python scripts, testing code snippets, and presenting my results. One of the major challenges I've faced is accessing different project virtual environments under one Jupyter notebook, making it easy to switch between Python kernels. Pipx helps here by allowing me to have one installation of Jupyter and access different Python kernels.

- mac-os/linux/windows

```bash
pipx install jupyterlab
```

You can choose between lab or notebook, I prefer lab.

## Conclusion

This is the basic installation required for Python development. You can add more tools as per your requirements. I've used these tools for my projects and have found them very useful. I've also used Docker for managing environments, but that's a different topic.
