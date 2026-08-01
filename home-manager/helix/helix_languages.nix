
	{ pkgs, ... }:

		{
			home.packages = with pkgs; [
				nixd
			];

			xdg.configFile."helix/languages.toml".text = ''
				[[language]]
					name = "nix"
					language-servers = ["nixd"]
					indent = { tab-width = 2, unit = "\t" }
			'';
		}
