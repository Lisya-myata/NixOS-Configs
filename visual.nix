
	{ pkgs, ... }:

		{
			environment.systemPackages = with pkgs; [
				krita
				drawpile
				blender
			];
		}

