
	{ ... }:

		{
			programs.firefox.profiles.Default.userChrome =
				''
					#sidebar-main
						{
							display: none !important;
						}
					#sidebar-panel-header
						{
							display: none;
						}
				'';
		}
