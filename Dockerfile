FROM openjdk:jre-alpine

RUN apk --no-cache add ca-certificates wget
RUN wget https://s3.amazonaws.com/Minecraft.Download/versions/1.11.2/minecraft_server.1.11.2.jar

CMD java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui

