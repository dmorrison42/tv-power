# TV Power

Controls a TV using an IR blaster based on feedback from a Chromecast.

Example usage:

1. TV is off
1. Cast to TV
1. TV turns on
1. Video ends
1. TV turns off

## Hardware

I am using a Raspberry Pi Zero W, but any Raspberry Pi with LIRC support will do.

### Parts:

- An IR LED (Stole from a remote) (1x)
- 51kΩ, 22kΩ, and 51Ω resistors (1x each) [(Starter kit here)](https://www.amazon.com/dp/product/B07BKRS4QZ)
- Pretty much any N type transistor (2x) [(Got mine from Amazon)](https://www.amazon.com/gp/product/B07BKX255D)
- Wire (CAT6 works great)

### Schematic

![Schematic](https://raw.githubusercontent.com/dmorrison42/tv-power/master/tv-power%20schematic.jpg)


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

## Raspberry Pi Configuration

1. boot raspberry pi
1. install pre-reqs

    ```
    sudo apt install python3-pip
    pip3 install pychromecast
    pip3 install py_irsend
    sudo apt install lirc
    ```

1. Configure lirc [this was non-trivial in buster](https://www.raspberrypi.org/forums/viewtopic.php?t=235256)
1. Install `./insall.sh`
1. Use TV!

## TODO

- [ ] Make a config file instead of globals
