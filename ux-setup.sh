outt() {
    { "$@" || return $?; } | while read -r line; do
        :
    done
}


install_ux(){
clear
echo -e "
       1.Installing required packages for Bot
         this may take a while."

outt "$(yes|apt install\
    apt-utils\
    curl\
    git\
    gnupg2\
    wget\
    unzip\
    tree\
    gcc zlib1g-dev\
    apt-transport-https\
    build-essential coreutils jq pv\
    ffmpeg mediainfo\
    neofetch\
    p7zip-full\
    libfreetype6-dev libjpeg-dev libpng-dev libgif-dev libwebp-dev)"
outt yes|apt install python3 python-dev-is-python3 python3-distutils libxslt-dev libxml2 nano
outt yes|apt install pip
outt pip install -U pip
outt pip install -U setuptools

echo -e "   
         Packages are set.  "
echo -e "
       2.Clonning Repo."

git clone -q https://github.com/anonymous-x97/UX-jutsu ux
cd ux
echo -e "
       3.Done, Now Installing requirements,
         this may take a while"
pip install --no-cache-dir -r requirements.txt
clear
echo -e "
       Follow the next step in guide."
}

install_ux 2> /dev/null
