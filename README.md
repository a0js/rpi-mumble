# rpi-mumble
Dockerized Mumble Server for Raspberry Pi

## Usage
```bash
docker run -d -p 64738:64738/udp -p 64738:64738 --name mumble a0js/rpi-mumble
docker logs mumble 2>&1 | grep Password # This will retrieve the SuperUser password
```

For custom mumble settings:
```bash
docker run -d -p 64738:64738/udp -p 64738:64738 -v path/to/config.ini:/config/mumble-server.ini --name mumble a0js/rpi-mumble
docker logs mumble 2>&1 | grep Password # This will retrieve the SuperUser password
```
