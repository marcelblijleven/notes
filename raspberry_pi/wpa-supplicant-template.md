# wpa supplicant config template
Template to set up wireless networks on headless raspberry pi's.

Create a file called wpa_supplicant.conf with the following content and change the values to match your wireless network and country.

```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=NL

network={
    ssid="SSID"
    psk="PASSWORD"
    key_mgmt=WPA-PSK
}
```

