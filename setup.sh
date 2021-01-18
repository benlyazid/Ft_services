#minikube start
#eval $(minikube docker-env)
#export MINI_KUBE_IP="$(minikube ip)"
sed -i -e "s/MINI_KUBE_IP/${MINI_KUBE_IP}/g" srcs/metallb.yml
sed -i -e "s/MINI_KUBE_IP/${MINI_KUBE_IP}/g" srcs/nginx/*.conf
#eval $(minikube docker-env)
docker build -t nginx srcs/nginx/.
docker build -t  phpmyadmin srcs/phpmyadmin/

docker build -t  mysql srcs/mysql/.
docker build -t wordpress srcs/WordPress/

#metalLb

kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.9.3/manifests/metallb.yaml
docker pull metallb/speaker:v0.9.3
docker pull metallb/controller:v0.9.3
kubectl apply -f srcs/metallb.yml

#RUN Continaires

kubectl apply -f srcs/nginx/deployment.yaml
kubectl apply -f srcs/nginx/service.yaml

kubectl apply -f srcs/mysql/deployment.yaml
kubectl apply -f srcs/mysql/service_mysql.yaml

kubectl apply -f srcs/phpmyadmin/deployment.yaml 
kubectl apply -f srcs/phpMyAdmin/php_service.yaml 	

kubectl apply -f srcs/wordpress/wdp_deployment.yaml 
kubectl apply -f srcs/wordpress/wdp_service.yaml 

##docker rm -fv $(docker ps -aq)\n
#minikube delete

sed -i -e "s/${MINI_KUBE_IP}/MINI_KUBE_IP/g" srcs/metallb.yml
sed -i -e "s/${MINI_KUBE_IP}/MINI_KUBE_IP/g" srcs/nginx/*.conf
