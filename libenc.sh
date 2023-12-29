dir1=/usr/bin
dir2=/root
SP=/root/ShellEncrypter

function cl() {
clear
}

function pr() {
echo "$1"
}

function inpt() {
read -p "$1" $2
}

function sl() {
sleep $1 
}

function install_pkg() {
apt update -y ; apt upgrade -y ; apt install libpolly -y ; apt install shc -y ; apt install binutils -y
    if [ $(dpkg-query -W -f='${Status}' shc 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
        echo "You are missing required files, we will aquire them now. This may take a while."
        read -p 'Press enter to continue.'
        apt update -y
        apt install shc
        sudo apt-get update -y
        sudo apt-get install shc
    fi
    if [ $(dpkg-query -W -f='${Status}' npm nodejs 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
        echo "You are missing required files, we will aquire them now. This may take a while."
        read -p 'Press enter to continue.'
        apt update -y
        apt install npm nodejs
        sudo apt-get update -y
        sudo apt-get install npm nodejs
        ln -s /usr/bin/nodejs /usr/bin/node
        npm install -g bash-obfuscate
    fi
apt install figlet -y
sudo apt-get install figlet -y

apt install wget curl git
sudo apt-get install wget curl git

apt install locate
sudo apt-get install locate

apt install yarn
sudo apt-get install yarn

npm fund > /dev/null 2>&1
npm audit fix --force > /dev/null 2>&1

versinode=$(node -v)
versinpm=$(npm -v)
echo " your node version is $versinode and your npm version is $versinpm"

function fixnpm(){
# hapus pagar, uncomment, Bila npm  error atau shc error
sudo apt remove --purge shc -y
sudo apt autoremove -y
sudo apt remove --purge nodejs npm -y
sudo apt clean
sudo apt autoclean
sudo apt install -f
sudo apt autoremove -y
sudo apt install curl
cd ~
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn
sudo apt-get install shc
npm install -g bash-obfuscate
node -v && npm -v && shc -v
npm fund
npm audit fix --force
}

#fixnpm
}

function end() {
exit 0
}

function abort() {
exit 1
}
