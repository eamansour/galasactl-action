FROM eclipse-temurin:11

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

RUN apt-get update \
    && apt-get install -y fontconfig libfreetype6

RUN curl -L -o /usr/bin/galasactl https://github.com/galasa-dev/cli/releases/download/v0.32.0/galasactl-linux-x86_64 \
    && chmod 755 /usr/bin/galasactl

ENTRYPOINT ["/entrypoint.sh"]
