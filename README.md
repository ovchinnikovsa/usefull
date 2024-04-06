# Useful files

_This repo contains config files and installation guides for few programs and some scripts that helps with atomization_

# Table of contents:

- [Useful files](#useful-files)
- [Table of contents:](#table-of-contents)
  - [Installations \& Configs](#installations--configs)
    - [nvim](#nvim)
    - [zsh \& Oh-My-Zsh](#zsh--oh-my-zsh)
    - [tmux](#tmux)
  - [Scripts](#scripts)
    - [Nice try to create post installation script for ubuntu :/](#nice-try-to-create-post-installation-script-for-ubuntu-)
    - [Adding conf file for new user to wire guard server](#adding-conf-file-for-new-user-to-wire-guard-server)

```
.
├── README.md
└── linux
    ├── confs
    │   ├── nvim
    │   │   └── init.vim
    │   ├── tmux
    │   │   └── tmux.conf
    │   └── zsh
    │       └── zshrc
    └── scripts
        ├── ubuntu
        │   └── post_install.sh
        └── wireguard
            └── set_conf.sh
```

## Installations & Configs

Before install app and libs run

```apt-get update && apt-get upgrade```

_All cp commands runs from this repo root path!_

### nvim

_installation for ubuntu_:

1. To install nvim type:
   ```sudo apt install neovim```
2. After that set config for current user:
   ```cp -r ./linux/confs/nvim ~/.config```

### zsh & Oh-My-Zsh

_installation for ubuntu_:

1. To install zsh type:
   ```sudo apt install zsh```
2. Oh-My-Zsh pre install:
   ```sudo apt install git-core curl fonts-powerline```
3. To install Oh-My-Zsh
   ```sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"```
4. Install p10k theme
   ```git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k```
5. Set config
   ```cp ./linux/confs/zsh/zshrc ~/.zshrc```
6. *Update changes:
   ```source ~/.zshrc```
7. *Use theme configuration
   ```p10k configure```
8. *Change shell manually
   ```chsh -s $(which zsh)```

### tmux

_installation for ubuntu_:

1. To install tmux type:
   ```sudo apt install tmux```
2. Set config
   ```cp ./linux/confs/tmux/tmux.conf ~/.tmux.conf```

## Scripts

_Bash scripts for linux machines_

### Nice try to create post installation script for ubuntu :/

1. To execute script type:
   ```sudo ./linux/scripts/ubuntu/post_install.sh```

### Adding conf file for new user to wire guard server

1. To execute script type:
   ```./linux/scripts/wireguard/set_conf.sh```
2. In shell dialogue set username
3. Set local ip address port, must be unique!
