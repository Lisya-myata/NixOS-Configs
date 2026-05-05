{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs;[
  neovide
  ];
  programs.neovim.enable = true;
}
