echo -e "\nexport PATH=$PATH:$(git rev-parse --show-toplevel)" >> ~/.bashrc
rm $(git rev-parse --show-toplevel)/.git/ $(git rev-parse --show-toplevel)/install.sh