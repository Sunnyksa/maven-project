FROM tomcat:9-alpine
COPY target/kitchensink.war /usr/local/tomcat/webapps
RUN value=`cat conf/server.xml` && echo "${value//8080/8050}" >| conf/server.xml
CMD ["catalina.sh", "run"]
