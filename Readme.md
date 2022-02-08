# Description

Project with Bootstrap-Server Services

# Image-Registry without Proxy
Für die Image Registry müssen folgende Dinge in Vorbereitung ausgeführt werden:

Die Proxy Konfiguration im Script (./registry-without-proxy/run-docker-registry.sh) muss angepasst werden. 
Die Zertifikate für den Server müssen in /data/certs abgelegt werden. Anschließend müssen sie in der Datei ./registry-without-proxy/run-docker-registry.sh referenziert werden.

Start Service

```
# Navigate to Folder
cd ./registry-without-proxy/
# Add File Permissions
chmod +x ./run-docker-registry.sh

# Run Registry
./run-docker-registry.sh
```