# Unifi controller on Raspberry Pi
## Prepare the RPi
### Update all packages
```sh
sudo apt update
sudo apt upgrade
```

### Install Java 8
```sh
sudo apt install openjdk-8-jre-headless
```

### Install rng-tools
Install rng-tools
```sh
sudo apt install rng-tools
```

Edit `/etc/default/rng-tools` and uncomment the line `#HRNGDEVICE=/dev/hwrng`/. 

Restart rng-tools
```sh
sudo systemctl restart rng-tools
```

## Install Unifi controller
### Add the Unifi repository
```sh
echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
```

Get the GPG key
```sh
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg
```

### Install unifi
```sh
sudo apt update && sudo apt install unifi
```

## Access unifi
Unifi will run on port `:8443`
