FROM openjdk:11-jre-stretch

RUN cd /usr/local \
    && wget http://apache-mirror.rbc.ru/pub/apache//jmeter/binaries/apache-jmeter-5.0.tgz \
    && tar -xvf apache-jmeter-5.0.tgz \
    && rm apache-jmeter-5.0.tgz \
    && mv apache-jmeter-5.0 jmeter5

ENV PATH "$PATH:/usr/local/jmeter5/bin"

ENTRYPOINT [ "jmeter" ]