# Quick Install


```bash
#!/bin/bash

S_PORT=22
R_HOST=remote.host.name

# Installing tools for Ops + Slideshow system
apt-get update && apt-get upgrade && apt-get install vim qiv feh xscreensaver 

# Allow to connect to server hosting images with certificate, no password
ssh key-gen
ssh-copy-id -i ssh-key.pub -p ${S_PORT} ${R_HOST}
```


# Slideshow

see https://framboise314.fr/un-cadre-photo-avec-le-raspberry-pi/

```bash
apt-get install qiv

man qiv

# Restart slideshow to refresh image browsing with new ones added to remote server
crontab -e:
*/5 * * * * /path/to/grabImages.sh
```

# Configuration du demarrage automatique

see `~/.config/autostart/slideshow.desktop`

# Configure crontab for wifi reconnect every minute

see unix.Stackexhange.com debian reconnet to wifi automatically when in range.
Can be usefull if you change your raspberry location quite often.

```
crontab -e:
* * * * * /path/to/wifi_reconnect.sh
```

# Configuration clé Wi-Fi

- Netgear (OLD): https://github.com/cilynx/rtl88x2bu
- TP-Link (rtl8192eu-linux-driver): https://github.com/Mange/rtl8192eu-linux-driver

