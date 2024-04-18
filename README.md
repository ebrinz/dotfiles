# OSX Dotfiles

This repository contains a collection of dotfiles for OSX, developed initially to manage my Python PATH. The project expanded to include a variety of configuration optimizations. If you are setting up a new Mac or updating your existing system, these configurations may be useful.


## Features

- **Python Configuration**:
  - Handles Homebrew Python and Miniconda installations' PATH environments.

- **Terminal Customization**:
  - Terminal enhancements using **Oh-my-zsh**, a framework for managing your Zsh configuration.

- **Starship Prompt**:
  - A customized prompt using Starship.

- **Vim Customization**:
  - Vim setup enhanced to mimic a modern text editor, incorporating plugins and visual aids.

## Installation

   ```bash
   # oh-my-zsh terminal
   curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

   # starship prompt
   curl -sS https://starship.rs/install.sh | sh
   # ...or...
   brew install starship
   
   # miniconda lightweight package and environment manager
   brew install --cask miniconda
   ```


   ```bash
   git clone https://github.com/ebrinz/dotfiles
   cd dotfiles
   sh setup.sh
   ```
