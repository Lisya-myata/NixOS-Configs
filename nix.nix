 
	{ ... }:

		{
			# Enables Nix-Index. Program that finds nix package in the nix store.
			programs.nix-index.enable = true;

			# Enables experimental features.
			nix.settings.experimental-features = [ "nix-command" "flakes" ];

			# Automatic garbage collection
			nix.gc ={
				automatic=true;
				dates="weekly";
				options="--delete-older-than 30d";
			};
		}
