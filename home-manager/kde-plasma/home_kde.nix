
	{ ... }:

		{
			programs.plasma = {
				enable = true;
				workspace = {
					lookAndFeel = "org.kde.breezedark.desktop";
				};
				panels = [
					{
						location = "bottom";
						widgets = [
							{
								kickoff = {
									icon = "nix-snowflake";
									sortAlphabetically = true;
									compactDisplayStyle = false;
									sidebarPosition = "right";
									favoritesDisplayMode = "grid";
									applicationsDisplayMode = "list";
									showButtonsFor = "session";
									showActionButtonCaptions = true;
								};
							}
							{
								iconTasks = {
									iconsOnly = false;
									behavior = {
										sortingMethod = "byHorizontalPosition";
										minimizeActiveTaskOnClick = true;
									};
									launchers = [
										"applications:org.kde.dolphin.desktop"
										"applications:firefox.desktop"
									];
								};
							}
							{
								systemTray = {
									items = {
										shown = [
											"org.kde.plasma.keyboardindicator"
											"org.kde.plasma.manage-inputmethod"
											"org.kde.plasma.weather"
											"org.kde.plasma.kdeconnect"
											"org.kde.plasma.volume"
											"org.kde.plasma.networkmanagement"
											"org.kde.plasma.battery"
										];
									};
								};
							}
							{
								digitalClock = {
									date = {
										format.custom = "dddd, MMMM yyyy";
									};
									time = {
										showSeconds = "onlyInTooltip";
										format = "24h";
									};
									timeZone = {
										selected =
											[
												"Pacific/Honolulu"
												"America/California"
												"America/New_York"
											];
										lastSelected = "Pacific/Honolulu";
										format = "offset";
									};
									calendar = {
										firstDayOfWeek = "monday";
										showWeekNumbers = true;
										plugins = [
											"alternatecalendar"
											"astronomicalevents"
											"holidaysevents"
										];
									};
								};
							}
						];
					}
				];
			};
		}
