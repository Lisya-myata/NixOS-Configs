
	{ ... }:
	
		{
			programs.fish = {
				shellAbbrs = {
					cd = "z";
					ls = "eza -l -a";
					shutdown = "systemctl poweroff";
					nix-rebuild = "sudo nixos-rebuild switch --flake ~/.dotfiles#v-nixos";
					nix-update = "sudo nix flake update --flake ~/.dotfiles";
					nix-garbage-collect = "sudo nix-collect-garbage -d";
				};
			};
		}
