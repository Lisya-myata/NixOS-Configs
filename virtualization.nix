
	{ pkgs, ...}:
	
		{
			environment.systemPackages = with pkgs;[
				qemu
				libvirt
			];

			programs.virt-manager.enable = true;
		}
