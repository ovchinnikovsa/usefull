# Usefull files

_This repo contains config files and installation guides for few programs and some scripts that helps with atomization_

# Table of contents:

- [Confs](#installations--configs)
    - [nvim](#nvim)
    - [zsh](#zsh--oh-my-zsh)
    - [tmux](#tmux)
- [Scripts](#scripts)
    - [Ubuntu post install](#nice-try-to-create-post-installation-script-for-ubuntu-)
    - [Wireguard set new conf](#adding-conf-file-for-new-user-to-wire-guard-server)

```
.
├── README.md
└── linux
    ├── confs
    │   ├── nvim
    │   │   └── init.vim
    │   └── zsh
    └── scripts
        ├── ubuntu
        │   └── post_install.sh
        └── wireguard
            └── set_conf.sh
```

## Installations & Configs

_All cp commands runs from this repo root path!_

### nvim

_installation for ubuntu_:

1. To install nvim type:
   ```sudo apt install nvim```
2. Aftre that set config for current user:
   ```cp -r ./linux/confs/nvim ~/.config```

### zsh & Oh-My-Zsh

_installation for ubuntu_:

1. To install zsh type:
   ```sudo apt install zsh```
2. Oh-My-Zsh pre install:
   ```sudo apt install git-core curl fonts-powerline```
3. To install Oh-My-Zsh
   ```sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh```
4. Install p10k theme
   ```git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k```
5. Set config
   ```cp ./linux/confs/zsh/.zshrc ~```
6. *Update changes:
   ```source ~/.zshrc```
7. *Use theme configurator
   ```p10k configure```
8. *Change shell manually
   ```chsh -s $(which zsh)```

### tmux

_installation for ubuntu_:

1. To install tmux type:
   ```sudo apt install tmux```

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
