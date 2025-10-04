#!/bin/bash

set -eufo pipefail

echo "Installing Nix packages from config file..."

nix-env -if ~/.config/nix/packages.nix

echo "Nix packages installed successfully."
