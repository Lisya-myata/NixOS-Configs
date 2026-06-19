 
    { ... }:

	{
	    home.username = "lisyamyata";
	    home.homeDirectory = "/home/lisyamyata";
  
	    # The state version is required and should stay at the version you
	    # originally installed.

	    home.stateVersion = "25.11";
	
	    imports = [
		./home_imports.nix
	    ];
	}


