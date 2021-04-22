pop="pop"
mac="mac"

case $SETUP_OS in 
  "$pop")
    echo "Begin Linux Setup"
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt install -y curl git
    bash <(curl -s https://raw.githubusercontent.com/bhavik3210/config-os/master/commons/scrips/setupSSHKeys.sh)
    bash <(curl -s https://raw.githubusercontent.com/bhavik3210/config-os/master/linux/scripts/linuxInstall.sh)
    ;;
  "$mac")
    echo "Begin Mac Setup"
    bash <(curl -s https://raw.githubusercontent.com/bhavik3210/config-os/master/commons/scrips/setupSSHKeys.sh)
    bash <(curl -s https://raw.githubusercontent.com/bhavik3210/config-os/master/mac/scripts/macInstall.sh)
    ;;
  *)
    echo "Setup environment variable"
    echo "export SETUP_OS=pop OR mac"
    ;;
esac