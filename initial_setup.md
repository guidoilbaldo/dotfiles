# Initial setup of personal environment

Upon a fresh installation or hardware change, here's a list of steps to perform to obtain a functioning device:

```bash
# Configure a new SSH keypair
ssh-keygen -t rsa -b 4096 -C "<mail_address>"
# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

```

## Brew packages/casks

Packages:

- git
- python (it's python3)
- vim
- zsh stuff -> zsh-autosuggestions, zsh-completions, zsh-syntax-highlighting

Casks:

- iterm2
- virtualbox
- vagrant

## PIP packages

- ansible
- awscli
