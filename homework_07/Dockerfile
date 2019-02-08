FROM maven:3-jdk-8-slim

# GitHub_Url из коммандной строки
ARG REPO

WORKDIR /prj

RUN apt-get update && apt-get install -y git && git clone ${REPO} /prj

CMD ["mvn", "package"]