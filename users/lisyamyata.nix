 
	{ pkgs, ...}:

			# Define a user account. Don't forget to set a password with ‘passwd’.
		{
			users.users.lisyamyata = {
				isNormalUser = true;
				extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
				#packages = with pkgs; [
				#];
			};
	    
			#Set fish as user's shell.
			users.users.lisyamyata.shell = pkgs.fish;
			environment.shells = [ pkgs.fish ];
		}
