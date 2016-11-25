#!/bin/bash

####################################
####################################
#	Autor: Dru					   #
#	Web: www.lladruc.net		   #
#	Dependencias: sendmail		   #
#	Notas: Solo funciona con gmail #
####################################
####################################

# ONLY ROOT AUTORIZED #
AUTHORIZED_USER="root"
if [ $USER != $AUTHORIZED_USER ]; then
echo "Este script debe ser ejecutado por el usuario $AUTHORIZED_USER" 1>&2
exit 1
fi


	echo "Enviando correo..."



# GLOBAL CONFIG #
myUser="jon.doe"
myMail=$myUser"@gmail.com"
myPsw="mypassword"

echo $myMail

# INITIALITE VARIABLES and READ IMPUTS#
mailTo=$1
asunto=$2
msg=$3

sendemail -f $myMail -t $mailTo -s smtp.gmail.com:587 -u \
$asunto -m $msg -v -xu myUser -xp myPsw -o tls=yes
