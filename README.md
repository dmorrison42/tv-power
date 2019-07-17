# Prereqs

## SD Card Prep

1. Use etcher or dd or something to flash an sd card with raspbarian
1. Configure the `boot` partition
    1. Create a new file named `ssh`
    1. Create a new file named `wpa_supplicant.conf`
	
        ```
        country=US
        ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
        update_config=1
        
        network={
            ssid="NETWORK-NAME"
            psk="NETWORK-PASSWORD"
        }
        ```

1. boot raspberry pi
1. install pre-reqs

    ```
    sudo apt install python3-pip
    pip install pychromecast
    sudo apt install lirc
    ```

1. Configure lirc [this was non-trivial in buster](https://www.raspberrypi.org/forums/viewtopic.php?t=235256)



