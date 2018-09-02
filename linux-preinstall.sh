#GENERATE SSH KEY and ADD IT TO GITHUB
ssh-keygen -t rsa -C "bp1235811@gmail.com" -f /home/bhavik/.ssh/id_rsa_personal -q -N ""
echo "\nAdd this key to personal Github Account:\n"
cat ~/.ssh/id_rsa_personal.pub
echo "\n\n"

ssh-keygen -t rsa -C "bhavik@work.com" -f /home/bhavik/.ssh/id_rsa_work -q -N ""
echo "\nAdd this key to work Github Account:\n"
cat ~/.ssh/id_rsa_work.pub
echo "\n\n"

git config --global user.email "bhavik@email.com"
git config --global user.name "bhavik"

#bash <(curl -s https://raw.githubusercontent.com/bp1235811/config-os/master/linux-preinstall.sh)
#bash <(curl -s https://raw.githubusercontent.com/bp1235811/config-os/master/linux-install.sh)
