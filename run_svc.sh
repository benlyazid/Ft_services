kubectl apply -f  srcs/nginx/deployment.yaml 
kubectl apply -f  srcs/nginx/service.yaml

kubectl apply -f  srcs/phpMyAdmin/deployment.yaml
kubectl apply -f  srcs/phpMyAdmin/php_service.yaml

kubectl apply -f srcs/mysql/deployment.yaml
kubectl apply -f srcs/mysql/service_mysql.yaml

kubectl apply -f srcs/WordPress/wdp_deployment.yaml
kubectl apply -f srcs/WordPress/wdp_service.yaml