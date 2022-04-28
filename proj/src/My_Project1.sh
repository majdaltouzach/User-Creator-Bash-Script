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
#<your command is here>
for i in {1..5}
do
	echo welcome $i times

done


##
#copy shadow file from /etc/shadow to sandbox directory
##
#<your command is here>
