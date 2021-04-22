ssh-keygen -t rsa -C "bhavik@email.com" -f $HOME/.ssh/id_rsa_petrsonal -q -N ""
echo "\nAdd this key to personal Github Account:\n"
cat ~/.ssh/id_rsa_personal.pub
echo "\n\n"

ssh-keygen -t rsa -C "bhavik@email.com" -f $HOME/.ssh/id_rsa_wotrk -q -N ""
echo "\nAdd this key to work Github Account:\n"
cat ~/.ssh/id_rsa_work.pub
echo "\n\n"

ssh-add ~/.ssh/id_rsa_personal
ssh-add ~/.ssh/id_rsa_work

git config --global user.email "bhavik@email.com"
git config --global user.name "bhavik"
