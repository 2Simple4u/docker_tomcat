
FROM tomcat:8.0-alpine

LABEL maintainer=”deepak@softwareyoga.com”

ADD target/java-tomcat-maven-example.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]