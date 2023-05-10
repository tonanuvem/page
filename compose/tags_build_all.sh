# Gera a imagem com as diversas tags com base nos diferentes Dockerfiles:
echo 'Iniciando os builds:'
cd ../blue && echo ' fazendo o build em' $(pwd) && sh build.sh
cd ../compose && echo ' fazendo o build em' $(pwd) && sh build.sh
cd ../slack && echo ' fazendo o build em' $(pwd) && sh build.sh
cd ../teams && echo ' fazendo o build em' $(pwd) && sh build.sh
docker images
