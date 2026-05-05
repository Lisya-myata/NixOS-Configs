{ config, pkgs, ... }:

{

  programs.zsh.enable = true;
  programs.starship.enable = true;

  environment.systemPackages = with pkgs;[
    jq
    fd
    ripgrep
    bat
    eza
    curl
    wget
    openssh
  ];
}
