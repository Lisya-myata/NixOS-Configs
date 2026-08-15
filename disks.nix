
	{
		disko.devices = {
			disk = {
				main = {
					type = "disk";
					device = "/dev/disk/... change based on your system";
					content = {
						type = "gpt";
						partitions = {
							ESP = {
								priority = 1;
								# Name sets parition label not the file system label.
								name = "ESP";
								# Start and end requires absolute drive locations. You cannot start on the same unit as the end of another partition.
								start = "1M";
								end = "512M";
								# Sets the partition type code. Default is filesystem and as such does not need to be set for file system partitions.
								type = "EF00";
								content = {
									type = "filesystem";
									# Disko has no label format yet so you need to pass an argument for the related mkfs.
									# The extra arg for mkfs.vfat requires no space between label argument and the label itself.
									extraArgs = [ "-nESP" ];
									format = "vfat";
									mountpoint = "/boot";
									# Setting unix permissions often writen just as '077' because the first 0 is special bits.
									# This allows the owner to do things with the partition but no one else has access.
									mountOptions = [ "umask=0077" ];
								};
							};
							
							swap = {
								priority = 2;
								name = "swap";
								# Size uses relative amounts. 8G will partition an 8GB area after the previous partition's end.
								size = "32G";
								type = "8200";
								content = {
									type = "swap";
									extraArgs = [ "-L swap" ];
									# Disko will set discard and resume device with mkswap to set them for swapon you need to do that seperately.
									discardPolicy = "both";
									resumeDevice = true;
								};
							};
							
							nixos = {
								priority = 3;
								name = "nixos";
								size = "100%";
								content = {
									type = "btrfs";
									extraArgs = [ "-f" "--label NixOS" ];
									# Subvolumes are parts of a btrfs file system that are backed up separately.
									# On the partition and file system side they are the same as normal. This also will not automatically create the directory, just tells btrfs to subvolume the directory if it exists.
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
