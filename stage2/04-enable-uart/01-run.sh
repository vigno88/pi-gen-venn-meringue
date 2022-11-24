#!/bin/bash -e

# Configure the UART
on_chroot << EOF
systemctl disable hciuart.service
stop serial-getty@ttyS0.service
systemctl disable serial-getty@ttyS0.service
EOF