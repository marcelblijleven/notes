# Set timezone on Ubuntu

Set timezone to Europe/Amsterdam using the `timedatectl` command.
```bash
sudo timedatectl set-timezone $(timedatectl list-timezones | grep Amsterdam)
```
