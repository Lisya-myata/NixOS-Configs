 
    { pkgs, ... }:

     {
	
	home.packages = with pkgs; [
	    nixpkgs-fmt
	    nixd
	    nodejs
	    gcc
	    fish-lsp
	];
	
	programs.nixvim = {
	 enable = true;
	 colorschemes.catppuccin = {
	    enable = true;
	  };

	 opts = {
	    #Enables line numbering.
	    number = true;
	    #Makes the line numbering relative for easier jumping.
	    relativenumber = true;
	    #Adds line highlight for cursor.
	    cursorline = true;
	    #Changes tab width (Default: 8)
	    shiftwidth = 4;
	  };
	};
	
	programs.neovide = {
	 enable = true;
	 settings = {
	    maximized = true;
	    tabs = true;
	  };
	};
     }
