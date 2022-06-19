outt() {
    { "$@" || return $?; } | while read -r line; do
        :
    done
}

install_env(){
echo -e " Setting up Env "
yes|outt pkg upgrade
outt apt-get update -y && outt apt install -y wget proot
wget -q https://github.com/anonymousx97/ubuntu/raw/master/ubuntu.sh
outt chmod +x ubuntu.sh &&  outt ./ubuntu.sh -y
echo -e " Done, Starting Ubuntu with ./startubuntu.sh. "
bash startubuntu.sh
}

install_env 2> /dev/null
