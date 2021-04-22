pop="pop"
mac="mac"

case $SETUP_OS in 
  "$pop")
    echo "Begin Linux Setup"
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt install -y curl git
    ;;
  "$mac")
    echo "Begin Mac Setup"
    ;;
  *)
    echo "Setup environment variable"
    echo "export SETUP_OS=pop OR mac"
    ;;
esac