
	{ lib, ... }:

		{
			nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [ "obsidian" "davinci-resolve" "vintagestory" "steam" "steam-unwrapped" "starsector" ];
		}
