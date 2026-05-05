{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs;[
  obsidian
  proton-vpn
  proton-vpn-cli
  signal-desktop
  davinci-resolve
  libreoffice-fresh
  ];
  programs.git.enable = true;
  programs.steam.enable = true;
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [ "steam" "steam-original" "steam-runetime" "steam-unwrapped" "obsidian" "davinci-resolve"];
}
