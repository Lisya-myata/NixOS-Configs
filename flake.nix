
		{
			inputs = {
		
				lix = {
					url = "https://git.lix.systems/lix-project/lix/archive/main.tar.gz";
					flake = false;
				};

				lix-module = {
					url = "https://git.lix.systems/lix-project/nixos-module/archive/main.tar.gz";
					inputs.nixpkgs.follows = "nixpkgs";
					inputs.lix.follows = "lix";
				};

				nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		
				home-manager = {
					url = "github:nix-community/home-manager/master";
					inputs.nixpkgs.follows = "nixpkgs";
				};

				plasma-manager = {
					url = "github:nix-community/plasma-manager";
					inputs.nixpkgs.follows = "nixpkgs";
					inputs.home-manager.follows = "home-manager";
				};
		
				nur = {
					url = "github:nix-community/NUR";
					inputs.nixpkgs.follows = "nixpkgs";
				};
		  };
	    
			outputs = inputs@{ self, nixpkgs, home-manager, plasma-manager,  lix, lix-module, nur, ... }: {
				# NOTE: host name goes after the dot in nixosConfigurations.
				nixosConfigurations.v-nixos = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";
					modules = [ 
						./boot.nix
						./kernel.nix
						./filesystem.nix
						./input.nix
						./time.nix
						./configuration.nix 
						./hardware-configuration.nix
						./swap.nix
						./display.nix
						./fonts.nix
						./sound.nix
						./users/lisyamyata.nix	
						./networking.nix
						./nix.nix
						./imports.nix

						lix-module.nixosModules.default

						inputs.home-manager.nixosModules.home-manager 
		    
						{
					    home-manager = {
								useGlobalPkgs = true;
								useUserPackages = true;
								sharedModules = [ plasma-manager.homeModules.plasma-manager ];
								users.lisyamyata = import ./home-manager/home.nix;
								backupFileExtension = "home-manager-backup";
							};
						}
			
						{
							nixpkgs.overlays = [ nur.overlays.default ];
						}
					];
				};
			};
		}
