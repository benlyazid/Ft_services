kubectl delete -f  srcs/nginx/deployment.yaml 
kubectl delete -f  srcs/nginx/service.yaml

kubectl delete -f  srcs/phpMyAdmin/deployment.yaml
kubectl delete -f  srcs/phpMyAdmin/php_service.yaml

kubectl delete -f srcs/mysql/deployment.yaml
kubectl delete -f srcs/mysql/service_mysql.yaml

kubectl delete -f srcs/WordPress/wdp_deployment.yaml
kubectl delete -f srcs/WordPress/wdp_service.yaml

kubectl delete -f srcs/ftps/deployment.yaml 
kubectl delete -f srcs/ftps/service.yaml
