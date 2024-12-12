FROM azagniotov/stubby4j:latest-jre11

LABEL Maintainer=LordGift

# Why --location=0.0.0.0 ??? Read: https://stackoverflow.com/a/59182290
ENV LOCATION=0.0.0.0 \
    STUBS_PORT=8882 \
    STUBS_TLS_PORT=7443 \
    ADMIN_PORT=8889 \
    YAML_CONFIG="stubs.yaml" \
    STUBBY4J_USER_HOME=/home/stubby4j

COPY /response /home/stubby4j/data

# Expose the three stubby4j ports and run the JAR
EXPOSE $ADMIN_PORT $STUBS_PORT $STUBS_TLS_PORT

# https://www.docker.com/blog/apache-log4j-2-cve-2021-44228/
ENTRYPOINT java \
        -DoverrideDisabledAlgorithms=true \
        -Dlog4j2.configurationFile=log4j2.xml \
        -jar stubby4j.jar \
            --location ${LOCATION} \
            --data data/${YAML_CONFIG}