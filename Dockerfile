FROM openjdk:jre-alpine

RUN apk --no-cache add ca-certificates wget
RUN wget -q https://s3.amazonaws.com/Minecraft.Download/versions/1.11.2/minecraft_server.1.11.2.jar -O /srv/minecraft_server.jar
RUN chmod a+r /srv/minecraft_server.jar

RUN adduser -S minecraft
USER minecraft
WORKDIR /home/minecraft

# accept EULA at https://account.mojang.com/documents/minecraft_eula
RUN echo 'eula=true' > eula.txt

EXPOSE 25565
CMD java -Xmx1024M -Xms1024M -jar /srv/minecraft_server.jar nogui

