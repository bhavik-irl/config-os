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

# TODO

- clean up `iterm-color-profiles` dir (removed that is unnecessary)
- fix soft links paths based on where the files are now moved to in linuxInstall and macInstall files
