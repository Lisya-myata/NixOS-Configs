
	{ pkgs, ... }:

		{
			environment.systemPackages = with pkgs; [
				keepassxc
				kdePackages.kleopatra	
			];
		}
			
