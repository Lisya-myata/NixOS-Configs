
	{
	    inputs = {
	    # This is pointing to an unstable release.
	    # If you prefer a stable release instead, you can this to the latest number shown here: https://nixos.org/download
	    # i.e. nixos-24.11
	    # Use `nix flake update` to update the flake to the latest revision of the chosen release channel.
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager = {
		    url = "github:nix-community/home-manager/master";
		    inputs.nixpkgs.follows = "nixpkgs";
		};
		nixvim.url = "github:nix-community/nixvim";
	    };
	    
	    outputs = inputs@{ self, nixpkgs, ... }: {
	    # NOTE: 'nixos' is the default hostname
	    nixosConfigurations.nixosvm = nixpkgs.lib.nixosSystem {
	    system = "x86_64-linux";
		modules = [ 
		    ./configuration.nix 
		    ./hardware-configuration.nix
		    ./lisyamyata.nix	
		    ./firewall.nix
		    ./imports.nix

		    inputs.home-manager.nixosModules.home-manager 
		{
		    home-manager = {
		     useGlobalPkgs = true;
		     useUserPackages = true;
		     users.lisyamyata = import ./home-manager/home.nix;
		     backupFileExtension = "home-manager-backup";
		    };
		}
       
	       {
		    home-manager.sharedModules = [
		    inputs.nixvim.homeModules.nixvim
		  ];
	       }
	     ];
	   };
	 };
	}

