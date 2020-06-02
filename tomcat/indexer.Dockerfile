FROM tomcat:9.0

# ENV BL_VERSION="1.7.3"

WORKDIR /setup

RUN apt-get update && apt-get install -y maven && apt-get install unzip && mvn --version 

RUN git clone git://github.com/INL/BlackLab.git && cd BlackLab && \
    mvn install && java -cp core/target/blacklab-*.jar nl.inl.blacklab.tools.IndexTool --help 

# RUN apt-get update && apt-get install -y maven && mvn --version && \ 
#     git clone git://github.com/INL/BlackLab.git --branch v${BL_VERSION} && cd BlackLab && \
#     mvn install && core/target/blacklab-${BL_VERSION}.jar


# RUN echo "Downloading blacklab war file..." && \
#     wget --quiet https://github.com/INL/BlackLab/releases/download/v1.7.3/blacklab-server-1.7.3.war && \ 
#     mv blacklab-server-*.war "$CATALINA_HOME/webapps" && \
#     echo '{"indices": {"lts": {"dir": "/lts/"}}}' > "$CATALINA_HOME/webapps/blacklab-server.json"

# EXPOSE 8080
