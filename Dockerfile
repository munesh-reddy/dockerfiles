FROM freedomkk/tomcat-maven
RUN apt install git -y && git clone https://github.com/munesh-reddy/game-of-life.git && cd game-of-life && mvn package
RUN cd game-of-life/gameoflife-web
RUN cp game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps
EXPOSE 8080
