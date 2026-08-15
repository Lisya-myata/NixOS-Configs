
	{ pkgs, ... }:

		{
			home.packages = with pkgs; [
				vintagestory
				prismlauncher
				daggerfall-unity
				openmw
				heroic
				starsector
				retroarch	
				cataclysm-dda
				alephone
				openra
				openttd-jgrpp
				apotris
				nethack
			];
		}
