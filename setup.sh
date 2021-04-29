# RUN MINIKUBE

	minikube start
	minikube docker-env
	eval $(minikube docker-env)
	export MINI_KUBE_IP="$(minikube ip)"
	sed -i -e "s/MINI_KUBE_IP/${MINI_KUBE_IP}/g" srcs/metallb.yml
	sed -i -e "s/MINI_KUBE_IP/${MINI_KUBE_IP}/g" srcs/nginx/*.conf
	sed -i -e "s/MINI_KUBE_IP/${MINI_KUBE_IP}/g" srcs/mysql/wordpress.sql
	
	sed -i -e "s/MINI_KUBE_IP/${MINI_KUBE_IP}/g" srcs/ftps/vsftpd.conf

#docker build images

	docker build -t nginx srcs/nginx/.
	docker build -t  phpmyadmin srcs/phpmyadmin/
	docker build -t  mysql srcs/mysql/.
	docker build -t wordpress srcs/WordPress/
	docker build -t  grafana srcs/grafana/.
	docker build -t influxdb srcs/influxdb
	docker build -t ftps srcs/ftps/.

#metalLb

	kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.9.3/manifests/namespace.yaml
	kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.9.3/manifests/metallb.yaml
	docker pull metallb/speaker:v0.9.3
	docker pull metallb/controller:v0.9.3
	kubectl apply -f srcs/metallb.yml

#RUN Continaires

	kubectl apply -f srcs/pv.yaml 

 	kubectl apply -f srcs/pv_influx.yaml 
	
	kubectl apply -f srcs/nginx/nginx.yaml


	kubectl apply -f srcs/mysql/mysql.yaml

	kubectl apply -f srcs/phpmyadmin/php.yaml 


	kubectl apply -f srcs/wordpress/wdp.yaml 

	kubectl apply -f srcs/grafana/grafana.yaml 

	kubectl apply -f srcs/influxdb/influx_db.yaml

	kubectl apply -f srcs/ftps/ftps.yaml 



sed -i -e "s/${MINI_KUBE_IP}/MINI_KUBE_IP/g" srcs/metallb.yml
sed -i -e "s/${MINI_KUBE_IP}/MINI_KUBE_IP/g" srcs/nginx/*.conf
sed -i -e "s/${MINI_KUBE_IP}/MINI_KUBE_IP/g" srcs/mysql/wordpress.sql
sed -i -e "s/${MINI_KUBE_IP}/MINI_KUBE_IP/g" srcs/ftps/vsftpd.conf

ssh-keygen -R $MINI_KUBE_IP 
minikube dashboard &
 # ID : 928
