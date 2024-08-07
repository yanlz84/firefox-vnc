# **因为115官方高端操作，停了linux的客户端，所以弄了个firefox用于远程下载**
**运行镜像**
```markdown
docker run -d -p 5800:5800 -p 5900:5900 -v <YourDownloadDir>:/root/Downloads  yanlz84/firefox-vnc 
``` 

**docker-compose**
```markdown
version: '3'
services:
  firefox-vnc:
    container_name: firefox-vnc
    image: yanlz84/firefox-vnc
    ports:
      - "5800:5800"
      - "5900:5900"
    volumes:
      - <YourDownloadDir>:/root/Downloads
    restart: unless-stopped
```

