### by Ryuk ###

install_ux(){
clear
echo -e "\n • 1.Installing required packages for Bot
  this may take a while."
echo -e "\n\n *** Spam incoming in 5 ***"
sleep 6

yes|apt install\
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
    libfreetype6-dev libjpeg-dev libpng-dev libgif-dev libwebp-dev
yes|apt install python3 python-dev-is-python3 python3-distutils libxslt-dev libxml2 nano
yes|apt install pip
pip install -U pip
pip install -U setuptools
clear
echo -e "\n • 2.Clonning Repo."

git clone -q https://github.com/ux-termux/UX-jutsu ux
cd ux
echo -e "\n • 3.Done, Now Installing requirements,
  this may take a while, wait patiently."
pip install -q --no-cache-dir -r requirements.txt
echo -e "\n • Follow the next step in guide."
}

install_ux 2> /dev/null
