
	{ ... }:
	
		{
			imports = [
				./home_sh.nix
					./fish.nix
					./git.nix
				./syncthing.nix
				./helix/helix_imports.nix
				./firefox/firefox_imports.nix
			];
		}
