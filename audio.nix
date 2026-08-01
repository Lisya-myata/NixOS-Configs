
	{ pkgs, ... }:

		{
			environment.systemPackages = with pkgs; [
				audacity
				audacious
				openutau
			];
		}
