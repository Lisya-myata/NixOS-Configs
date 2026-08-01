
	{ ... }:

		{
			services.syncthing = {
				enable = true;
				overrideDevices = true;
				overrideFolders = true;
				guiAddress = "127.0.0.1:8384";
					tray = {
						enable = true;						
					};
			};
		}
