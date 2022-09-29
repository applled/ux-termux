### made by Ryuk ###

outt() {
    { "$@" || return $?; } | while read -r line; do
        :
    done
}

install_env(){
clear
echo -e "       Setting up Env "
yes|outt pkg upgrade
outt apt-get update -y && outt apt install -y wget proot
wget -q https://raw.githubusercontent.com/ux-termux/ux-termux/main/ubuntu.sh
outt chmod +x ubuntu.sh &&  outt ./ubuntu.sh -y
echo -e "    

       Done, Now start Ubuntu with ./startubuntu.sh. "
}

install_env 2> /dev/null
