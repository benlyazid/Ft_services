minikube start
docker-machine env
docker-machine start
eval $(docker-machine env) 
eval $(minikube docker-env)
#docker build -t nginx srcs/nginx/.
#docker build -t  mysql srcs/mysql/.
#docker build -t  phpmyadmin srcs/phpmyadmin/.
#metalLb
#kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.9.3/manifests/namespace.yaml
#kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.9.3/manifests/metallb.yaml
#kubectl apply srcs/metallb.yml
##RUN Continaires
#kubectl apply -f srcs/nginx/deployment.yaml
#kubectl apply -f srcs/nginx/service.yaml
#kubectl apply -f srcs/mysql/deployment.yaml
#kubectl apply -f srcs/mysql/service_mysql.yaml
#docker rm -fv $(docker ps -aq)\n