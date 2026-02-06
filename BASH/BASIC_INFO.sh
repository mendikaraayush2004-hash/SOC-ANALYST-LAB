#!/bin/bash

#this  is a bash script used to know the basic info of your computer


echo "========SYSTEM INFORMATION=========="

#the first line here is for hostname 
echo "HOSTNAME   : $(hostname)"
 
#the second line is for user name the variables that you are looking are pre registered
echo "USER       : $(whoami)"
 
#this line is for user 
echo "OS VERSION : $(source /etc/os-release && echo $PRETTY_NAME)"
#we use source  here because it consider os release file as different variables and 
#registers the pretty name which is usually OS  as a variable and prints it out
 
#tyhis line is for kernel    
echo "KERNEL     : $(uname -r)"
 
#this line is for uptime 
echo "UPTIME     : $(uptime -p)"
 
#this line is for CPU information
echo "CPU        : $(lscpu | awk -F: '/Model name/ {print$2}' | xargs)"

#this line is for knowing memory 
echo "Memory     :     $(free -h | awk 'NR==2 {print $3 "/" $2}')"

#this is to know disk information
echo "DISK       :       $(df -h | awk 'NR==4 {print $5 " used (" $4 " free)"}')"



#this is to know the local ip address
echo "LOCAL IP   :   $(hostname -I | awk '{print $1}')"






echo "===================================="


