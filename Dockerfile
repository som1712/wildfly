From centos
RUN yum update -y
RUN yum install -y net-tool nano wget unzip java-1.8.0-openjdk
RUN wget http://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.zip
RUN unzip wildfly-10.1.0.Final.zip
RUN mv wildfly-10.1.0.Final /opt/wildfly
CMD ["/opt/wildfly/bin/standalone.sh -b 0.0.0.0"]
EXPOSE 8080
