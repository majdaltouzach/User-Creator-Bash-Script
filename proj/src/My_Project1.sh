#!/bin/bash

###
#perform PROJECT1 for CS125: Create user account and assign password from words.txt.
#Coded by: Toufic Majdalani
###

read -p "Please run this script using sudo, else will not assign password to users and cannot copy shadow file to Sandbox. Press Enter key to proceed."

#cd /home/linux-class/

##
#Create sandbox directory in home
mkdir sandbox2

cd sandbox2
##

##
#Download password file online
##
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/twitter-banned.txt -O passwordlist.txt


##From passwordlist.txt, shuffle and randomly select 100 entries then save it to words.txt in the sandbox directory

#cd to the sandbox
#cd sandbox

##
#create5  users, generate and assign password from words.txt 
##
for i in {1..5}
do
	randompw=$(shuf words.txt | tail -n 1)
	useradd -m user1
	echo user1:$randompw | chpasswd
	echo "UserID:" user1 "has been created with the following password:" 	    $randompw

done





##
#copy shadow file from /etc/shadow to sandbox directory
##
cp -ar /etc/shadow sandbox2