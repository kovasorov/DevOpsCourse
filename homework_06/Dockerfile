#
# запуск контейнера - docker run -it --rm -p port:8080 container_name
# просмотр результата - http://localhost:port/hello-1.0/
#

# клонирование и сборка проекта
FROM maven:3-jdk-8-slim AS buildstg

ENV REPO_NAME=boxfuse-sample-java-war-hello

ADD https://github.com/boxfuse/${REPO_NAME}/archive/master.zip /

RUN unzip master.zip && cd ${REPO_NAME}-master && mvn package

# копируем результат сборки в Tomcat
FROM tomcat:8-jre8-slim

ENV SOURCE_DIR=/boxfuse-sample-java-war-hello-master/target \
    TARGET_DIR=/usr/local/tomcat/webapps/

COPY --from=buildstg ${SOURCE_DIR}/hello-1.0.war ${TARGET_DIR}

EXPOSE 8080

CMD ["catalina.sh", "run"]