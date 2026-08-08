
	{ ... }:

		{
			# Select internationalisation properties.
			i18n.defaultLocale = "en_US.UTF-8";
			i18n.extraLocaleSettings = {
				LC_TIME = "en_GB.UTF-8";
				LC_MEASUREMENT = "en_GB.UTF-8";
			};
			
			# console = {
				# font = "Lat2-Terminus16";
				# keyMap = "us";
				# useXkbConfig = true; # use xkb.options in tty.
			# };

			# Enable CUPS to print documents.
			services.printing.enable = true;

			# Enable touchpad support (enabled default in most desktopManager).
			services.libinput.enable = true;
		}
