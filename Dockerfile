FROM tomcat:8
LABEL "name"="Dileep"
EXPOSE 8080
ADD /gameoflife-web/target/*.war /usr/local/tomcat/webapps/gameoflife.war