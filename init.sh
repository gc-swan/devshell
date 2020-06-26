#! /bin/bash 
echo $(whoami); \
apt update; \
apt upgrade -Y; \
apt install zsh; \
echo "shell: $SHELL"; \
echo "user: $(id)"; \
chsh -s /usr/bin/zsh; \
su gcswan; \
echo "user: $(id)" \;
echo "shell: $SHELL" \;
#chsh -s /usr/bin/zsh; \
#echo "shell: $SHELL" \;
#sh "$(curl https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; \
#source ~/.zshrc; \


