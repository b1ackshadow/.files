#!/usr/bin/env bash

cwd=$(pwd) # store cwd so that we can go back after building this persists ur original cwd cuz you might be in a diff dir while configuring nix
cd /etc/nixos
sudo nixos-rebuild switch --flake '.#desktop' &> /dev/stdin
cd $cwd

