#!/bin/bash
clear
x="s"

while true $x != "s"
do
echo "//---- Gerenciador FTP ----//"
echo ""
echo "1) Instalar servidor FTP"
echo ""
echo "2) Habilitar acesso anônimo"
echo ""
echo "3) Desabilitar acesso anônimo"
echo ""
echo "4) Habilitar envio/escrita de arquivos"
echo ""
echo "5) Desabilitar envio/escrita de arquivos"
echo ""
echo "6) Desinstalar o servidor FTP"
echo ""
echo "7) Sair"
echo ""
echo "// ----------------------------------//"

echo ""
echo "Informe a opção desejada: "
read x
case "$x" in

    1)
        sudo apt-get update;
        sudo apt-get install vsftpd;
	sleep 2
	clear;
;;

    2)
        sed -i 's/anonymous_enable=NO/anonymous_enable=YES/g' /etc/vsftpd.conf;
	service vsftpd restart;
	echo "Operação realizada com sucesso!"
	sleep 2
	clear;
;;
    3)
	sed -i 's/anonymous_enable=YES/anonymous_enable=NO/g' /etc/vsftpd.conf;
	service vsftpd restart;
	echo "Operação realizada com sucesso!"
	sleep 2
	clear;
;;
    4)
	sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf;
	sed -i 's/write_enable=NO/write_enable=YES/g' /etc/vsftpd.conf;
	service vsftpd restart;
	echo "Operação realizada com sucesso!"
	sleep 2
	clear;
;;
    5)
        sed -i 's/write_enable=YES/#write_enable=YES/g' /etc/vsftpd.conf;
	service vsftpd restart;
	echo "Operação realizada com sucesso!"
	sleep 2
	clear;


;;
    6)
        sudo apt-get remove vsftpd;
	sleep 2
	clear;
	
;;
    7)
	echo "Saindo ..."
	sleep 2
	clear;
	exit;
;;
esac
done
