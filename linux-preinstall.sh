#GENERATE SSH KEY and ADD IT TO GITHUB
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git

ssh-keygen -t rsa -C "bp1235811@gmail.com" -f /home/bhavik/.ssh/id_rsa_personal -q -N ""
echo "\nAdd this key to personal Github Account:\n"
cat ~/.ssh/id_rsa_personal.pub
echo "\n\n"

ssh-keygen -t rsa -C "bhavik@work.com" -f /home/bhavik/.ssh/id_rsa_work -q -N ""
echo "\nAdd this key to work Github Account:\n"
cat ~/.ssh/id_rsa_work.pub
echo "\n\n"

ssh-add ~/.ssh/id_rsa_personal
ssh-add ~/.ssh/id_rsa_work

git config --global user.email "bhavik@email.com"
git config --global user.name "bhavik"