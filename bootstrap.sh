#!/bin/sh

mkdir $HOME/.local/share/chezmoi/.chezmoidata
chezmoi decrypt $HOME/.local/share/chezmoi/identity.toml.age > $HOME/.local/share/chezmoi/.chezmoidata/identity.toml
