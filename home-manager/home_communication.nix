
	{ pkgs, ... }:

		{
			programs.vesktop = {
				enable = true;
				settings = {
					discordBranch = "stable";
				};
			};
			home.packages = with pkgs; [
				signal-desktop
			];
		}
