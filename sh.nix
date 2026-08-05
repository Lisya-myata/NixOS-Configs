 
			#For configuring shell. Named sh.nix because 'shell.nix' referes to nix-shell and as such can cause issues.

	{ pkgs, ... }:
  
		{
			programs.zsh.enable = true;
			programs.fish.enable = true;
			programs.starship.enable = true;
			programs.bat.enable = true;
			programs.zoxide.enable = true;

			# services.openssh.enable = true;

			environment.systemPackages = with pkgs; [
				jq
				fd
				ripgrep
				eza
				wget
				fzf
				entr
			];
		}
