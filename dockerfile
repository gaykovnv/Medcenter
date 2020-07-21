FROM  tomcat:9.0

RUN mkdir -p /usr/src/main/java/myApp
ADD myApp.war /usr/local/tomcat/webapps/myApp.war

WORKDIR /usr/src/main/java/myApp/
COPY . /usr/src/myApp

ENV TZ Europe/Samara
EXPOSE 8080

RUN chmod a+x ./run.sh
ENTRYPOINT ["./run.sh"]