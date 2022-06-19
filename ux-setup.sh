outt() {
    { "$@" || return $?; } | while read -r line; do
        :
    done
}


install_ux(){
clear
echo -e "

       1.Installing required packages for Bot"


    apt -qq update && apt -qq upgrade -y
    yes|apt install
    apt-utils
    curl
    git
    gnupg2
    wget
    unzip
    tree
    gcc zlib1g-dev
    apt-transport-https
    build-essential coreutils jq pv
    ffmpeg mediainfo
    neofetch
    p7zip-full
    libfreetype6-dev libjpeg-dev libpng-dev libgif-dev libwebp-dev
    yes|apt install python3 python-dev-is-python3 python3-distutils libxslt-dev libxml2 nano
    yes|apt install pip

echo -e "   
         Packages are set.  "
echo -e "
       2.Clonning Repo."

git clone https://github.com/anonymous-x97/UX-jutsu ux
cd ux
echo -e "
       3.Done, now Installing requirements,
         this may take a while"
pip install --no-cache-dir -r requirements.txt
}

install_ux 2> /dev/null
