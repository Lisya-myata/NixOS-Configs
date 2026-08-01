
	{ pkgs, ... }:

		{
			environment.systemPackages = with pkgs; [
				tailscale
				tailscale-systray
			];
			services.tailscale.enable = true;
		}
