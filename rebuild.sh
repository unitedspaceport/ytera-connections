docker stop ytera-mysql
docker rm ytera-mysql
docker run --name ytera-mysql  -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret -d ytera-mysql:1

echo "Port: 3306 \nPassword: my-secret"
