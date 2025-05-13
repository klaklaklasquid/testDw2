docker rm cont-pretty -f
docker build -t pretty-name .
docker run -dt --name cont-pretty -p 81:80 pretty-name
