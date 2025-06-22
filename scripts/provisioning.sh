#!/bin/bash

echo "Updating the system..."
sudo dnf update -y

echo "Installing packages..."
sudo dnf install -y \
    adcli \
    mlocate \
    chrony \
    oddjob \
    oddjob-mkhomedir \
    qemu-guest-agent \
    realmd \
    samba-common-tools \
    sssd \
    sssd-tools

echo "Cleaning dnf cache..."
sudo dnf clean all

echo "Enabling and starting qemu-guest-agent..."
sudo systemctl enable --now qemu-guest-agent