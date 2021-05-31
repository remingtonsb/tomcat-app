FROM registry.access.redhat.com/ubi8/openjdk-8
ADD tomcat8.zip /tmp
RUN unzip /tmp/tomcat8.zip -d /opt/
ADD cluster_test.war /opt/tomcat8/webapps/
RUN chmod +x /opt/tomcat8/bin/*.sh
CMD /opt/tomcat8/bin/catalina.sh run

