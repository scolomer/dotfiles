{ pkgs ? import <nixpkgs> {} }:

with pkgs; [
  neovim
  git
  ripgrep
  fzf
  curl
  devbox
]
