linux="linux"
mac="mac"

linuxSetup() {
  echo "Begin Linux Setup"
  sudo apt update -y
  sudo apt upgrade -y
  sudo apt install -y curl git
  export WORKSPACE=~/Workspace/config-os
  export CONFIGS=$WORKSPACE/configurations
  bash <(curl -s https://raw.githubusercontent.com/bhavik3210/config-os/master/linux/scripts/linuxInstall.sh)
}

macSetup() {
  echo "Begin Mac Setup"
  
  export WORKSPACE=~/Workspace/config-os
  export CONFIGS=$WORKSPACE/configurations
  bash <(curl -s https://raw.githubusercontent.com/bhavik3210/config-os/master/mac/scripts/macInstall.sh)
}

commonSetup() {
  bash <(curl -s https://raw.githubusercontent.com/bhavik3210/config-os/master/common/scripts/setupLocalEnvironment.sh)
}

exception() {
  echo "Environment variable SETUP_OS is missing"
  echo "Please setup environemtn variable using -> export SETUP_OS=linux OR mac"
}

case $SETUP_OS in 
  "$linux") linuxSetup ;;
  "$mac") macSetup ;;
  *) exception ;;
esac

commonSetup