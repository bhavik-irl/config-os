# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install apps using cask
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#GENERATE SSH KEY and ADD IT TO GITHUB
ssh-keygen -t rsa -C "persoanlAddress@emailhost.com" -f /Users/bhavik/.ssh/id_rsa_personal -q -N ""
echo "\nAdd this key to personal Github Account:\n"
cat ~/.ssh/id_rsa_personal.pub
echo "\n\n"

ssh-keygen -t rsa -C "workAddress@emailhost.com" -f /Users/bhavik/.ssh/id_rsa_work -q -N ""
echo "\nAdd this key to work Github Account:\n"
cat ~/.ssh/id_rsa_work.pub
echo "\n\n"

ssh-add ~/.ssh/id_rsa_personal
ssh-add ~/.ssh/id_rsa_work

git config --global user.email "bhavik@email.com"
git config --global user.name "bhavik"