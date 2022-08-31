
echo "Digite o seu nome"
read NOME
echo "O nome digitado foi $NOME"
echo "Digite o nome do arquvio"
read ARQ
echo "O nome do arquivo foi $ARQ"

echo "mkdir $NOME">> ./run.sh
echo "cd  $NOME" >> ./run.sh
echo "touch $ARQ" >> ./run.sh

 chmod +x run.sh
./run.sh
 
DIR="$NOME"
if [ -d "$DIR" ]; then
  echo "Achei o diretório $DIR"

  PASTA01="java_ibm/console"
 echo  cd .. >> $NOME/$ARQ
  echo  cd "$PASTA01">> $NOME/$ARQ
  echo  ls >> $NOME/$ARQ

   ARQBUILD="./build.sh"
  echo "$ARQBUILD" >> $NOME/$ARQ
  
  ARQSTART="./start.sh"
  echo "$ARQSTART" >> $NOME/$ARQ
 

    
else
 
  echo "não achei o diretorio $DIR"

    
fi





 
chmod +x $NOME/$ARQ
$NOME/$ARQ




