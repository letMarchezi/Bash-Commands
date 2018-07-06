
#Leticia Bossatto, Renan Poggian, Bhenette Carvalho 


import os
os.system('clear')


def menu():
    print ("//----------------------------------------//")
    print ("| 1) Instalar servidor FTP                 |")  
    print ("| 2) Habilitar acesso anonimo              |")
    print ("| 3) Desabilitar acesso anonimo            |")
    print ("| 4) Habilitar envio/escrita de arquivo    |")
    print ("| 5) Desabilitar envio/escrita de arquivos |")
    print ("| 6) Desinstalar o servidor FTP            |")
    print ("| 7) SAIR                                  |")
    print ("//----------------------------------------//")

def um():
	os.system('sudo apt-get update')
	os.system('sudo apt-get install vsftpd')
	print("Operacao realizada com sucesso!")
	os.system('sleep 1')
	
def dois():
	fp = open('/etc/vsftpd.conf', 'r')
	conteudo = fp.read()
	fp.close()
	string_nova = conteudo.replace('anonymous_enable=NO', 'anonymous_enable=YES')
	fp = open('/etc/vsftpd.conf', 'w')
	fp.write(string_nova)
	fp.close()
	os.system('service vsftpd restart')
	print("Operacao realizada com sucesso!")
	os.system('sleep 1')

def tres():
	fp = open('/etc/vsftpd.conf', 'r')
	conteudo = fp.read()
	fp.close()
	string_nova = conteudo.replace('anonymous_enable=YES', 'anonymous_enable=NO')
	fp = open('/etc/vsftpd.conf', 'w')
	fp.write(string_nova)
	fp.close()
	os.system('service vsftpd restart')
	print("Operacao realizada com sucesso!")
	os.system('sleep 1')


def quatro():

	fp = open('/etc/vsftpd.conf', 'r')
	conteudo = fp.read()
	fp.close()
	string_nova = conteudo.replace('#write_enable=YES', 'write_enable=YES')
	fp = open('/etc/vsftpd.conf', 'w')
	fp.write(string_nova)
	fp.close()
	os.system('service vsftpd restart')
	print("Operacao realizada com sucesso!")
	os.system('sleep 1')

def cinco():
	fp = open('/etc/vsftpd.conf', 'r')
	conteudo = fp.read()
	fp.close()
	string_nova = conteudo.replace('write_enable=YES', '#write_enable=YES')
	fp = open('/etc/vsftpd.conf', 'w')
	fp.write(string_nova)
	fp.close()
	os.system('service vsftpd restart')
	print("Operacao realizada com sucesso!")
	os.system('sleep 1')

def seis():
	os.system('sudo apt-get purge vsftpd')
	print("Operacao realizada com sucesso!")
	os.system('service vsftpd restart')
	os.system('sleep 1')

def sete():
	print ("Encerrando...")
	os.system('sleep 1')
	os.system('clear')
	exit()

b = 0

print('Digite sua senha para autenticar:')
os.system('sudo chmod 777 /etc/vsftpd.conf')

while b != 1:
    menu()
    a = input()

    if a == 1:
        um()
    elif a == 2:
        dois()
    elif a == 3:
        tres()
    elif a == 4:
        quatro()
    elif a == 5:
        cinco()
    elif a == 6:
        seis()
    elif a == 7:
        sete()    
    else:
        print("Opcao invalida")
    os.system('sleep 1')
    os.system('clear')


