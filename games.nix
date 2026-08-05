	{ pkgs, ... }:

		{    
			environment.systemPackages = with pkgs; [ 
				vintagestory
				prismlauncher
				daggerfall-unity
				openmw
				heroic
				starsector
				retroarch	
				moonlight
				cataclysm-dda
				alephone
				openra
				openttd-jgrpp
				apotris
				nethack
			];
   
			programs.steam.enable = true; 
		}
