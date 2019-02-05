FROM maven:3-jdk-8-slim AS buildstg

ENV REPO_NAME=boxfuse-sample-java-war-hello

ADD https://github.com/boxfuse/${REPO_NAME}/archive/master.zip /
RUN unzip master.zip && cd ${REPO_NAME}-master && mvn package

FROM tomcat:8-jre8-slim AS deploy

COPY --from=buildstg /boxfuse-sample-java-war-hello-master/target/hello-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
## копируем war-файл, рестарт Tomcat
#cp $Deploy_dir/*.war /var/lib/tomcat8/webapps/
#service tomcat8 restart

#http://localhost:8888/hello-1.0/
#docker run -it --rm -p 8888:8080