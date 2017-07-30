FROM openjdk:jre-alpine

RUN apk --no-cache add ca-certificates wget
RUN wget -q https://s3.amazonaws.com/Minecraft.Download/versions/1.12/minecraft_server.1.12.jar -O /srv/minecraft_server.jar
RUN chmod a+r /srv/minecraft_server.jar

ADD run.sh /run.sh

EXPOSE 25565 25575
CMD /run.sh

