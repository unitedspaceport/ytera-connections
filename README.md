# Ytera Connections

**Ytera connections** is the name of the interplanetary transport service of USP. It offers spacetravel between all major spaceports in the KCSR (Known and Controlled Space Regions) including Yellowstone US, Europe, Mars Alpha, United HQ and First Moon spaceports.

## Getting started

At the core of the service is an MySQL database containing all information of the connections. 

```bash
# Build Dockerfile
docker build -t ytera-mysql:1

# Start service
docker run --name ytera-mysql  -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret -d ytera-mysql:1
```

The content of this repo contains a ```create.sql```file which creates the database and all required tables. The ```populate.sql```populates the tables with the required data. Both files are incorporated in the Dockerfile.

The ```rebuild.sh```script stops and removes the 'ytera-mysql' docker container and starts a new one. 

## REST API implementation

The Ytera service is exposed to the enterprise via REST API exposed on the webMethods service bus. The webMethods service bus implements the REST API via JDBC queries to the ytera mysql database.

* See [Swagger definiton](./ytera-service-swagger-definition.yaml) 
* See [webMethods implementation projects]() (**TODO**)

## Roadmap

* Creation of a frontent app to enable an easy way to register for an upcoming connection.