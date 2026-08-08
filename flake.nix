
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
		
				nur = {
					url = "github:nix-community/NUR";
					inputs.nixpkgs.follows = "nixpkgs";
				};
		  };
	    
			outputs = inputs@{ self, nixpkgs, lix, lix-module, nur, ... }: {
				# NOTE: host name goes after the dot in nixosConfigurations.
				nixosConfigurations.nixosvm = nixpkgs.lib.nixosSystem {
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
