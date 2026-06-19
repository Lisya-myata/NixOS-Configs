
    { pkgs, ... }:

	{
	    
  	    environment.systemPackages = with pkgs;[ 
		vintagestory
		prismlauncher
		daggerfall-unity
		openmw
		heroic
		starsector
		retroarch	
	    ];
	    
	    programs.steam.enable = true;
	    
	}
