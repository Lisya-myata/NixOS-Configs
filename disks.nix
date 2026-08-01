
	{
		disko.devices = {
			disk = {
				main = {
					type = "disk";
					device = "/dev/disk/... change based on your system;
					content = {
						type = "gpt";
						partitions = {
							ESP = {
								priority = 1;
								name = "ESP";
								start = "1M";
								end = "512M";
								type = "EF00";
								content = {
									type = "filesystem";
									extraArgs = [ "-n ESP" ];
									format = "vfat";
									mountpoint = "/boot";
									mountOptions = [ "umask=0077" ];
								};
							};
							
							swap = {
								priority = 2;
								name = "swap";
								start = "512M";
								end = "4G";
								type = "8200";
								content = {
									type = "swap";
									extraArgs = [ "-L swap" ];
									discardPolicy = "both";
									resumeDevice = true;
								};
							};
							
							nixos = {
								priority = 3;
								name = "nixos";
								start = "4G";
								end = "100%";
								content = {
									type = "btrfs";
									extraArgs = [ "-f" "--label NixOS" ];
									subvolumes = {
										"/rootfs" = {
											mountpoint = "/";
										};
										"/home" = {
											mountOptions = [ "compress=zstd" ];
											mountpoint = "/home";
										};
										"/home/user" = {};
										"/nix" = {
											mountOptions = [
												"compress=zstd"
												"noatime"
											];
											mountpoint = "/nix";
										};
									};
								};
							};
						};
					};
				};
			};
		};
	}
