x="s"
	
	
menu ()
	
{

function listarDiretorio(){
	echo "Digite o nome do diretório: "
        read nome
        ls $nome
        sleep 5
} 

function listarConteudoDir(){
	echo "Digite o nome do diretório: "
        read nome
        ls -la $nome
        sleep 5
}

function copiaArquivo()
{
	echo "Caminho do arquivo: "
	read nome1
	echo "Caminho da cópia: "
	read nome2
	cp -R $nome1 $nome2
        sleep 5
}

function copiaDir(){
	echo "Caminho do diretório: "
	read nome1
	echo "Caminho da cópia: "
	read nome2
	cp -R $nome1 $nome2
        sleep 5
}

function alterarArquivo()
{
	echo "Caminho antigo: "
        read nome1
	echo "Caminho novo: "
	read nome2
	mv $nome1 $nome2
        sleep 5
}

function alterarDir(){
        echo "Caminho antigo: "
        read nome1
	echo "Caminho novo: "
	read nome2
	mv $nome1 $nome2
        sleep 5
}

function delArquivo(){
	echo "Caminho do arquivo: "
        read nome
        rm $nome
        sleep 5
}

function delDiretorio(){
	echo "Caminho do diretório: "
	read nome
	rm -r $nome
	sleep 5
}

function visualizarArquivo(){
	echo "Caminho do arquivo: "
        read nome
        cat $nome
        sleep 5
}

function visualizarArquivoPausa(){
        echo "Caminho do arquivo: "
        read nome
        cat $nome | more
        sleep 5
}


function exibirNumLinhas(){
        echo "Caminho do arquivo: "
        read nome
        wc -l $nome 
        sleep 5
}

function procurarPalavra(){
	echo "Caminho do arquivo: "
        read nome
	echo "Palavra para filtro: "
        read palavra
        cat $nome | grep -n $palavra
        sleep 5
}

function exibiPrimeirasLinhas(){
	echo "Caminho do arquivo: "
        read nome
	echo "Quantidade de linhas: "
        read linhas
        head -n $linhas $nome
        sleep 5
}

function exibirUltimasLinhas()
{
	echo "Caminho do arquivo: "
	read nome
	echo "Quantidade de linhas: "
	read linhas
	tail -n $linhas $nome
	sleep 5
}

function caminhoDir()
{
	pwd
	sleep 5
}

function exibirUsuario()
{
	whoami
	sleep 5
}

function exibirUsuariosSistema()
{
	w
	sleep 5
}

function trocarSenha()
{
	echo "Digite o usuário que terá a senha alterada: "
	read nome
	passwd $nome
	sleep 5
}

function addUsuario()
{
	echo "Digite o nome do usuario iniciando com letra minúscula: "
	read nome
	adduser $nome
	sleep 5
}

function removerUsuario()
{
	echo "Nome do usuário: "
	read nome
	userdel -r $nome
	sleep 5
}



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
	
	
echo "Informe o número da opção desejada: "
	
read x
echo "Opção informada ($x)"
	
echo "================================================"
	
	
case "$x" in
	
	
   1)
	   listarDiretorio;
	
echo "================================================"
	
;;
	
   2)
	listarConteudoDir;
	
echo "================================================"
	
;;
	
   3)
	copiarArquivo;
	
	
echo "================================================"
	
;;
	
   4)
	copiaDir;
	
	
echo "================================================"
	
;;
	
  
	
   5)
	alterarArquivo;
	
echo "================================================"
	
;;
	
   6)
	alterarDir;
	
	
echo "================================================"
	
;;
	
   7)
	delArquivo;
	
echo "================================================"
	
;;
	
	
8)
	delDiretorio;
	
echo "================================================"
	
;;
	
	
9)
	visualizarArquivo;
	
echo "================================================"
	
;;
	
	
10)
	visualizarArquivoPausa;
	
	
echo "================================================"
	
;;
	
	
11)
	exibirNumLinhas;
	
echo "================================================"
	
;;
	
	
12)
	procurarPalavra;
	
	
echo "================================================"
	
;;
	
	
13)
	exibiPrimeirasLinhas;
	
echo "================================================"
	
;;
	
	
14)
	exibirUltimasLinhas;
	
	
echo "================================================"
	
;;
	
	
15)
	caminhoDir;
	
	
echo "================================================"
	
;;
	
	
16)
	exibirUsuario;
	
echo "================================================"
	
;;
	
	
17)
	exibirUsuariosSistema;
	
echo "================================================"
	
;;
	
	
18)
	trocarSenha;
	
echo "================================================"
	
;;
	
	
19)
	addUsuario;
	
	
echo "================================================"
	
;;
	
	
20)
	removerUsuario;

echo "================================================"
	
;;   
	
	
*)
	
       echo "Opção inválida!"
	
	
	
echo " "
	
;;
	
	
esac
	
	
echo "Você deseja continuar?(s/n)"

	
read y
case "$y" in
	
n)
	echo "================================================"
	echo "Saindo..."
        sleep 3
        clear;
        exit;

echo "================================================"

;;

s)
	sleep 3
esac
done	
}
menu
