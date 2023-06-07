# What is sonarqube

[SonarQube](http://www.sonarqube.org/) is a self-managed, automatic code review tool that systematically helps you deliver clean code. It integrates into your existing workflow and detects issues in your code to help you perform continuous code inspections of your projects. The tool analyses [30+ different programming languages](https://rules.sonarsource.com/) and integrates into your CI pipeline and DevOps platform to ensure that your code meets high-quality standards.

[source](https://docs.sonarqube.org/latest/)

# run SonarQube with docker-compose

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
