x="s"
menu ()
{
while true $x != "s"
do
clear
echo "================================================"
echo "Mini script"
echo ""
echo "1)Listar o conteúdo de um diretório."
echo""
echo "2)Listar o conteúdo de um diretório com todas as informações."
echo ""
echo "3)Criar uma cópia de um arquivo."
echo ""
echo "4)Criar uma cópia de um diretório."
echo""
echo "5)Renomear/Mover um arquivo."
echo""
echo "6)Renomear/Mover um diretório."
echo""
echo "7)Deletar/Apagar um arquivo."
echo ""
echo "8)Deletar/Apagar um diretório"
echo ""
echo "9)Visualize o conteúdo de um arquivo."
echo ""
echo "10)Visualize o conteúdo de um arquivo com pausa."
echo ""
echo "11)Exiba quantas linhas tem um arquivo."
echo ""
echo "12)Qual o número da linha de um arquivo que possui determinada palavra."
echo ""
echo "13)Exiba as N primeiras linhas de um arquivo"
echo ""
echo "14)Exiba as N últimas linhas de um arquivo."
echo ""
echo "15)Exiba o caminho do diretório atual."
echo ""
echo "16)Exiba o usuário autenticado atualmente no terminal."
echo ""
echo "17)Exiba os usuários autenticados em todo o sistema."
echo ""
echo "18)Troque a senha de um usuário do sistema."
echo ""
echo "19)Adicione um usuário ao sistema."
echo ""
echo "20)Remover um usuário completamente do sistema."
echo ""
echo "================================================"

echo "Informe no número da opção desejada: "
read x
echo "Opção informada ($x)"
echo "================================================"

case "$x" in

    1)
    read nome
    ls $nome
    sleep 5
echo "================================================"
;;
    2)
          read nome
    ls -la $nome
    sleep 5
echo "================================================"
;;
    3)
echo "Caminho do arquivo: "
read nome1
echo "Caminho da cópia: "
read nome2
cp -R $nome1 $nome2
    sleep 5

echo "================================================"
;;
    4)
       echo "Caminho do diretório: "
    read nome1
echo "Caminho da cópia: "
read nome2
cp -R $nome1 $nome2
    sleep 5

echo "================================================"
;;
    
    5)
       echo "Caminho antigo: "
    read nome1
echo "Caminho novo: "
read nome2
mv $nome1 $nome2
    sleep 5
echo "================================================"
;;
    6)
       echo "Caminho antigo: "
    read nome1
echo "Caminho novo: "
read nome2
mv $nome1 $nome2
    sleep 5

echo "================================================"
 ;;
    7)
echo "Caminho do arquivo: "
          read nome
    rm $nome
    sleep 5
       

echo "================================================"
;;

8)
echo “Caminho do diretório: “
read nome
rm -r $nome
sleep 5
       
echo "================================================"
;;

9)
    echo “Caminho do arquivo: “
    read nome
    cat $nome
    sleep 5

echo "================================================"
;;

10)
    echo “Caminho do arquivo: “
    read nome
    cat $nome | more
    sleep 5

echo "================================================"
;;

11)

    echo “Caminho do arquivo: “
    read nome
    wc -l $nome 
    sleep 5

echo "================================================"
;;

12)

    echo “Caminho do arquivo: “
    read nome
    echo “Palavra para filtro: “
    read palavra
    cat $nome | grep -n $palavra
    sleep 5

echo "================================================"
;;

13)
    echo “Caminho do arquivo: “
    read nome
    echo “Quantidade de linhas: “
    read linhas
    head -n $linhas $nome
    sleep 5

echo "================================================"
;;

14)
echo “Caminho do arquivo: “
read nome
echo “Quantidade de linhas
read linhas
tail -n $linhas $nome
sleep 5

echo "================================================"
;;

15)
pwd
sleep 5

echo "================================================"
;;

16)

whoami
sleep 5

echo "================================================"
;;

17)
w
sleep 5

echo "================================================"
;;

18)
echo “Digite o usuário que terá a senha alterada: “
read nome
passwd $nome
sleep 5

echo "================================================"
;;

19)
echo “Nome do usuário: “
read nome
adduser $nome
sleep 5

echo "================================================"
;;

20)
echo “Nome do usuário: “
read nome
userdel -r $nome
sleep 5

echo "================================================"
;;    

*)
        echo "Opção inválida!"


echo "================================================"
;;

esac

echo "Você deseja continuar?(s/n)"
read y
case "$y" in 
n)
         echo "saindo..."
         sleep 5
         clear;
         exit;
;;
s)
sleep 5

esac
done

}
menu


