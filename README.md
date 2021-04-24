# configurations for workstation setup

> ## Set Environment Variable
>
> `export SETUP_OS=linux` (also in .env file)

- `mac` for MacOS
- `linux` for ubuntu based os

## generate and add SSH keys into github

`bash <(curl -s https://raw.githubusercontent.com/bhavik3210/config-os/master/commons/scrips/setupSSHKeys.sh)`

## Install

`bash <(curl -s https://raw.githubusercontent.com/bhavik3210/config-os/master/commons/scrips/startInstall.sh)`

## What this setup script does?

- download and install necessary dev tools
- download and soft link dot files
- produce dotlocalEnv file which can be used to add local envionronment things that are not meant to be submitted to this repo
