
#Leticia Bossatto, Renan Poggian, Bhenette Carvalho 


import os

def menu():
    print ("//----------------------------------------//")
    print ("| 1) Instalar servidor FTP                 |")  
    print ("| 2) Habilitar acesso anonimo              |")
    print ("| 3) Desabilitar acesso anonimo            |")
    print ("| 4) Habilitar envio/escrita de arquivo    |")
    print ("| 5) Desabilitar envio/escrita de arquivos |")
    print ("| 6) Desinstalar o servidor FTP             |")
    print ("| 7) SAIR                                  |")
    print ("//----------------------------------------//")

def um():
	os.system('sudo apt-get update')
	os.system('sudo apt-get install')
	
def dois():
	fp = open('x', 'r')
	conteudo = fp.read()
	fp.close()
	string_nova = conteudo.replace('anonymous_enable=YES', 'anonymous_enable=NO')
	fp = open('x', 'w')
	fp.write(string_nova)
	fp.close()

def tres():
	fp = open('x', 'r')
	conteudo = fp.read()
	fp.close()
	string_nova = conteudo.replace('anonymous_enable=NO', 'anonymous_enable=YES')
	fp = open('x', 'w')
	fp.write(string_nova)
	fp.close()


def quatro():

	fp = open('x', 'r')
	conteudo = fp.read()
	fp.close()
	string_nova = conteudo.replace('#write_enable=YES', 'write_enable=YES')
	fp = open('x', 'w')
	fp.write(string_nova)
	fp.close()

def cinco():
	fp = open('x', 'r')
	conteudo = fp.read()
	fp.close()
	string_nova = conteudo.replace('write_enable=YES', '#write_enable=YES')
	fp = open('x', 'w')
	fp.write(string_nova)
	fp.close()

def seis():
	os.system('sudo apt-get remove vsftpd')

def sete():
	exit()

b = 0

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
        print("opcao invalida")
    os.system('clear')
print ("Encerrando...")
