The commands below accept
[Mojang's EULA](https://account.mojang.com/documents/minecraft_eula).

# Running the Server
```
git clone https://github.com/felixhummel/docker-minecraft.git
cd docker-minecraft
echo 'eula=true' > data/eula.txt
docker-compose up -d
docker-compose logs --tail=60 -f
```

