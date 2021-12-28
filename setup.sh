#!/bin/sh

yes | mv config/* /home/alarm/.config
yes | mv antimicrox /home/alarm/.antimicrox
yes | mv dmrc /home/alarm/.dmrc
yes | mv local /home/alarm/.local
yes | mv scripts /home/alarm/.scripts
yes | mv var /home/alarm/.var
yes | mv Xauthority /home/alarm/.Xauthority
yes | mv Xresources /home/alarm/.Xresources
yes | mv zshrc /home/alarm/.zshrc

echo "Done!"
