
	{ ... }:
	
		{
			imports = [
				./home_sh.nix
					./fish.nix
					./git.nix
				./kde-plasma/home_kde_imports.nix
				./syncthing.nix
				./helix/helix_imports.nix
				./firefox/firefox_imports.nix
				./home_communication.nix
				#./home_games.nix
			];
		}
