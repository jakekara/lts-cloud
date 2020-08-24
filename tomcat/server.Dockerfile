FROM tomcat:9.0

COPY lts /lts

RUN apt-get update && apt-get install -y maven && apt-get install unzip && mvn --version 

RUN echo "Downloading blacklab war file..." && \
    wget --quiet https://github.com/INL/BlackLab/releases/download/v1.7.3/blacklab-server-1.7.3.war && \ 
    mv blacklab-server-*.war "$CATALINA_HOME/webapps" && \
    echo '{"indices": {"lts": {"dir": "/lts/"}}}' > "$CATALINA_HOME/webapps/blacklab-server.json" && \
    mkdir /etc/blacklab && \
    echo '{"indices": {"lts": {"dir": "/lts/"}}}' > "/etc/blacklab/blacklab-server.json" 

EXPOSE 8080

CMD ["catalina.sh", "run"]
