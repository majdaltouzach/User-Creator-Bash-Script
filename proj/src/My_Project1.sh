#!/bin/bash

###
#perform PROJECT1 for CS125: Create user account and assign password from words.txt.
#Coded by: Toufic Majdalani
###

read -p "Please run this script using sudo, else will not assign password to users and cannot copy shadow file to Sandbox. Press Enter key to proceed."

##
#Create sandbox directory in home
mkdir sandbox2
##
cd sandbox2

##
#Download password file online
##
wget https://bit.ly/3F2W0YL -O passwordlist.txt


##From passwordlist.txt, shuffle and randomly select 100 entries then save it to passwordlist.txt in the sandbox directory




##
#create5  users, generate and assign password from words.txt 
##

for i in {1..5}
do
	randompw=$(shuf passwordlist.txt | tail -n 1)
	useradd -m user$i
	echo user$i:$randompw | chpasswd
	echo "UserID": user$i "has been created with the following password:" $randompw

done


#randompw=$(shuf passwordlist.txt | tail -n 1)
#useradd -m user1
#echo user1:$randompw | chpasswd
#echo "UserID:" user1 "has been created with the following password:" $randompw

#randompw=$(shuf passwordlist.txt | tail -n 1)
#useradd -m user2
#echo user1:$randompw | chpasswd
#echo "UserID:" user1 "has been created with the following password:" $randompw

#randompw=$(shuf passwordlist.txt | tail -n 1)
#useradd -m user3
#echo user1:$randompw | chpasswd
#echo "UserID:" user1 "has been created with the following password:" $randompw

#randompw=$(shuf passwordlist.txt | tail -n 1)
#useradd -m user4
#echo user1:$randompw | chpasswd
#echo "UserID:" user1 "has been created with the following password:" $randompw

#randompw=$(shuf passwordlist.txt | tail -n 1)
#useradd -m user5
#echo user1:$randompw | chpasswd
#echo "UserID:" user1 "has been created with the following password:" $randompw



##
#copy shadow file from /etc/shadow to sandbox directory
##
cp -ar /etc/shadow ./
echo Copying /etc/shadow to /home/$UserID/sandbox2
echo done
