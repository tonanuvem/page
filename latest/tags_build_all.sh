# Gera a imagem com as diversas tags com base nos diferentes Dockerfiles:
echo 'Removendo imagens antigas do ambiente:'
docker rmi $(docker images tonanuvem/fiap_page* -q)
echo 'Iniciando os builds:'
cd ../blue && echo ' fazendo o build em' $(pwd) && sh build.sh
cd ../latest && echo ' fazendo o build em' $(pwd) && sh build.sh
cd ../slack && echo ' fazendo o build em' $(pwd) && sh build.sh
cd ../teams && echo ' fazendo o build em' $(pwd) && sh build.sh
docker images
