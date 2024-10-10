docker create network tplb
docker build -t im-nginx-lb .
mkdir shared1
mkdir shared2
echo "<h1>Hello 1</h1>" > shared1/index.html
echo "<h1>Hello 2</h1>" > shared2/index.html

docker run --name nginx1 --rm -d -p 81:80\
   --mount type=bind,source="$(pwd)"/shared1,target=/usr/share/nginx/html \
   --network tplb nginx

docker run --name nginx2 --rm -d -p 82:80\
   --mount type=bind,source="$(pwd)"/shared2,target=/usr/share/nginx/html \
   --network tplb nginx

docker run --name nginx-lb --rm -d -p 83:80 --network tplb im-nginx-lb
