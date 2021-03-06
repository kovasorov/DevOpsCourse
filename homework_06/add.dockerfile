#
# билд контейнера - docker build --build-arg REPO=GitHub_Url -t container_name -f add.dockerfile .
# запуск контейнера - docker run -it --rm -p port:8080 container_name
# просмотр результата - http://localhost:port/app_name/
#

# клонирование и сборка проекта
FROM maven:3-jdk-8-slim AS buildstg

# GitHub_Url из коммандной строки
ARG REPO

WORKDIR /prj

RUN apt-get update && apt-get install -y git && \
        git clone ${REPO} && \
        cd $(echo ${REPO} | cut -d / -f 5 | cut -d . -f 1) && \
        mvn package && \
        cp target/*.war /prj

# копируем результат сборки в Tomcat
FROM tomcat:8-jre8-slim

ENV TARGET_DIR=/usr/local/tomcat/webapps/

COPY --from=buildstg /prj/*.war ${TARGET_DIR}

EXPOSE 8080

CMD ["catalina.sh", "run"]
