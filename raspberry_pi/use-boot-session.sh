# Use boot session

Install screen
```
sudo apt install screen
```

At to bottom of .bashrc
```
[[ $(/usr/bin/tty) == "/dev/tty1" ]] && exec /usr/bin/screen
```

Set the boot options to log in as user
```
sudo raspi-config 
# and follow the onscreen options
```

Reboot the Pi, afterwards log in via SSH and run

```
screen -list
```

Find the name of the active screen and run

```
screen -x <name of screen>
```
