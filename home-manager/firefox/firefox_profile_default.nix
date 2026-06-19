
# Configuring Default profile

    { ... }:

	{
	    	programs.firefox.profiles = {
	    	    Default = {
	    	     id = 0;
	    	     isDefault = true;
			settings = {
			    
			    # Enables restore session
			    "Browser.startup.page" = "3";
			    
			    # Enables Global Privacy Control(GPC).
			    "globalprivacycontrol.enabled" = true;
			    "privacy.globalprivacycontrol.enabled" = true;

			    # Sets DNS over HTTPS protection mode
			    "network.trr.mode" = "3";

			    # Enables the sidebar and vertical tabs.
			    "sidebar.revamp" = true;
			    "sidebar.position_start" = false;
			    "sidebar.verticalTabs" = true;

			    # Enables Autoscroll (middle mouse scroll mode).
			    general.autoScroll = true;

			    # Disables picture and picture button.
			    media.videocontrols.picture-in-picture.video-toggle.enabled = true;

			    # Tweaking home and new tab page.
				# Sets page's wallpaper.
				"browser.newtabpage.activity-stream.newtabWallpapers.wallpaper" = "firefox-bold";
				# Enables search bar.
				"browser.newtabpage.activity-stream.showSearch" = true;
				# Disables weather widget.
				"browser.newtabpage.activity-stream.showWeather" = false;
				#Disables sponsored content, sites, and stories.
				"browser.newtabpage.activity-stream.showSponsored" = false;
				"browser.newtabpage.activity-stream.showSponsoredCheckboxes" = false;
				"browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
				"browser.newtabpage.activity-stream.feeds.section.topstories" =false;
				"browser.newtabpage.activity-stream.feeds.topsites" = false;

			    # Enables compact mode density and toggles it.
			    "browser.compactmode.show" = true;
			    "browser.proton.toolbar.version" = true;

			    # Disables some address bar suggestions.
				# Disables address bar history suggestions.
				browser.urlbar.shortcuts.history = false;
				browser.urlbar.suggest.history = false;
				# Disables suggestions from Firefox and sponsors.
				browser.urlbar.suggest.quicksuggest.all = false;
				browser.urlbar.suggest.quicksuggest.sponsored = false;
				# Disables display recent searches.
				browser.urlbar.suggest.recentsearches = false;
			};
		     
			search = {
			    # Force's home-manager to overwrite 'search.json.mozlz4'. 
			    # If you do not set this home-manager will error every rebuild after the initial if you open Firefox trying to overwrite this file/the backup it made of it.
			    force = true;
			    
			    # Sets your default search engine in normal and private browsing.
			    default = "Kagi";
			    privateDefault = "Kagi";
			
			    # Adds and configures new search engines.
			    engines = {
			    
				# Kagi Search Engine.
				"Kagi" = {
				urls = [{
				    # Url that goes to your search engine's search page.
				    template = "https://kagi.com/search?";
				    
				    # Sets the parameters needed to succesfully make a search.
				    # value is for where your search will go into the url.
				    params = [
				    { name = "q"; value = "{searchTerms}"; }
				    ];
				}];
				};
			
				# Disables default search engines.
				google.metaData.hidden = true;
				bing.metaData.hidden = true;
				"amazondotcom-us".metaData.hidden = true;
				ddg.metaData.hidden = true;
				ebay.metaData.hidden = true;
				perplexity.metaData.hidden = true;

			    };
		    
			};
		    };
		};
	    }
