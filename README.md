# SonarQube with docker-compose

## prerequisites

make sure you have `docker.io` and `docker-compose` installed

```sh
# apt install docker.io docker-compose
```

## setup

modify the following variables in `docker-compose.yml`:

sonarqube service:

* SONAR_JDBC_USERNAME: <database_username>
* SONAR_JDBC_PASSWORD: <database_password>

db service:

* POSTGRES_USER=<database_username>
* POSTGRES_PASSWORD=<database_password>
* POSTGRES_DB=<database_name>

## start

All you have to do is run `./run.sh` as root. It might take a little while to setup both services.

Once it's done browse to `http://localhost:9000`
