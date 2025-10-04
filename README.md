## Bootstrap on Debian

```shell
apt update && apt install fish curl git age
```

```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
```

## Bootstrap on NixOS

```shell
nix-env -iA nixpkgs.neovim nixpkgs.age nixpkgs.fish nixpkgs.curl nixpkgs.gnused nixpkgs.gawk nixpkgs.chezmoi
```

## Installing fish

```shell
chsh -s /usr/bin/fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install https://github.com/scolomer/plugin-git
omf install bobthefish
```

## Installing and setting up dotfiles

```shell
chezmoi init https://github.com/scolomer/dotfiles.git
```

```shell
chezmoi apply
```
