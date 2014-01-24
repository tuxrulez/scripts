#!/bin/bash 
	echo "UPDATE tbl_encapsulador SET bitrate='1024k' " | mysql -uroot -prapadura2 CTRL_TRANSMISSOES
	echo "select bitrate from tbl_encapsulador" | mysql -uroot -prapadura2 CTRL_TRANSMISSOES 
	echo "1M -- `date`" >> /tmp/muda.txt
