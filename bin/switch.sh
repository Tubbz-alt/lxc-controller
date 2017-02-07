#!/bin/bash

PASSWD=password

PS3="Please choose a switch: "
select option in hp pica1 pica2 pica3 pica4 exit
do
	case $option in
	hp)
		sshpass -p $PASSWD ssh manager@192.168.0.51;;
	arista)
		sshpass -p $PASSWD ssh admin@192.168.0.52;;
	pica1)
		sshpass -p $PASSWD ssh admin@192.168.0.55;;
	pica2)
		sshpass -p $PASSWD ssh admin@192.168.0.56;;
	pica3)
		sshpass -p $PASSWD ssh admin@192.168.0.57;;
	pica4)
		sshpass -p $PASSWD ssh admin@192.168.0.58;;
	*)
		break;;
	esac
done
