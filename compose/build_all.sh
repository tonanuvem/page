# Gera a imagem com as diversas tags com base nos diferentes Dockerfiles:

cd ../blue && sh build.sh
cd ../compose && sh build.sh
cd ../slack && sh build.sh
cd ../teams && sh build.sh
docker images
