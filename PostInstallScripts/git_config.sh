
echo "------------------------------------"
echo "--------- Configuring git ----------"
echo "------------------------------------"
## Set vars
echo "Enter email address:"
read EMAIL
echo "Enter full name:"
read NAME

## Set name and emails
git config --global user.name $NAME
git config --global user.email $EMAIL

ssh-keygen -t rsa -b 4096 -C "$EMAIL"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa