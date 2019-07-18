#!/bin/sh
sudo cp tv-power /usr/bin
sudo cp tv-power.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable tv-power
sudo systemctl restart tv-power
