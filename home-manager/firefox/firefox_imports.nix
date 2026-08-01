
	{ ... }:
    
		{
			imports = [ 
				./firefox.nix
					./default-profile/firefox_profile_default.nix
						./userChrome.nix
			];
		}
