kubectl delete -f  srcs/nginx/nginx.yaml 

kubectl delete -f  srcs/phpMyAdmin/php.yaml

kubectl delete -f srcs/mysql/mysql.yaml

kubectl delete -f srcs/WordPress/wdp.yaml

kubectl delete -f srcs/ftps/ftps.yaml 

kubectl delete -f srcs/influxdb/influx_db.yaml

kubectl delete -f srcs/grafana/grafana.yaml 


kubectl delete -f srcs/pv.yaml 

kubectl delete -f srcs/pv_influx.yaml 
	

