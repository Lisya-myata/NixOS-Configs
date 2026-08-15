
	{ pkgs, ... }:

		{
			services.displayManager.sddm.enable = true;
			services.desktopManager.plasma6.enable = true;
 
			environment.systemPackages = with pkgs.kdePackages; [
				plasma-browser-integration
				yakuake
				kdeconnect-kde
				filelight
			];

			environment.plasma6.excludePackages = with pkgs.kdePackages; [
				discover
				kate
			];
		}
