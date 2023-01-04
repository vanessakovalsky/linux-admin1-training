#!/bin/sh

menu(){
echo -ne "
My First Menu
'1' Date
'2' Charge systeme
'3' Version du système 
'0' Exit
'Choose an option:' "
        read a
        case $a in
	        1) date ; menu ;;
	        2) iotop ; menu ;;
	        3) cat /etc/*release ; menu ;;
			0) exit 0 ;;
			*) echo -e "Wrong option."; menu;;
        esac
}

menu 