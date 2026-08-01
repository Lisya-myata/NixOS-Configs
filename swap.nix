
	{ ... }:

		{
			# Point swap at partition
			swapDevices = [ { device = "/dev/disk/by-label/swap";
			options = [ "discard" ]; # Trim for swap partition
			}];
			    
			# Enable hibernation
			boot.kernelParams = [ "resume=dev/disk/by-label/swap" ];
			boot.resumeDevice = "/dev/disk/by-label/swap";
		}
