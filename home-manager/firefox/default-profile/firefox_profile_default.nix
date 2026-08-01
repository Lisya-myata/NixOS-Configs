 # Configuring Default profile

	{pkgs, ... }:

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
					# Force's home-manager to overwrite existing configuration for the same reason as search force.
					containersForce = true;
					containers = {
						"Amazon" = {
							color = "yellow";
							icon = "cart";
							id = 12;
						};
						"Amazon Private" = {
							color = "yellow";
							icon = "cart";
							id = 11;
						};
						"Amazon Francine" = {
							color = "yellow";
							icon = "cart";
							id = 13;
						};
						"ATprotocol" = {
							color = "blue";
							icon = "fingerprint";
							id = 4;
						};
						"Bandcamp" = {
							color = "turquoise";
							icon = "cart";
							id = 14;
						};
						"Catbox" = {
							color = "toolbar";
							icon = "pet";
							id = 9;
						};
						"Discord" = {
							color = "blue";
							icon = "fence";
							id = 22;
						};
						"Ebay" = {
							color = "orange";
							icon = "cart";
							id = 16;
						};
						"Etsy" = {
							color = "orange";
							icon = "cart";
							id = 15;
						};
						"Facebook" = {
							color = "blue";
							icon = "fence";
							id = 26;
						};
						"Gelbooru" = {
							color = "blue";
							icon = "circle";
							id = 21;
						};
						"Github" = {
							color = "blue";
							icon = "fingerprint";
							id = 10;
						};
						"GOG" = {
							color = "purple";
							icon = "cart";
							id = 19;
						};
						"Google" = {
							color = "blue";
							icon = "fingerprint";
							id = 5;
						};
						"Kagi" = {
							color = "orange";
							icon = "pet";
							id = 1;
						};
						"Microsoft" = {
							color = "blue";
							icon = "fingerprint";
							id = 6;
						};
						"Patreon" = {
							color = "orange";
							icon = "dollar";
							id = 8;
						};
						"Paypal" = {
							color = "blue";
							icon = "dollar";
							id = 7;
						};
						"Porkbun" = {
							color = "red";
							icon = "cart";
							id = 3;
						};
						"Protonmail" = {
							color = "purple";
							icon = "briefcase";
							id = 2;
						};
						"Reddit" = {
							color = "orange";
							icon = "fence";
							id = 24;
						};
						"Steam" = {
							color = "blue";
							icon = "cart";
							id = 18;
						};
						"Throne" = {
							color = "purple";
							icon = "cart";
							id = 17;
						};
						"Twitch" = {
							color = "purple";
							icon = "fence";
							id = 23;
						};
						"Twitter" = {
							color = "blue";
							icon = "fence";
							id = 25;
						};
						"Wikipedia" = {
							color = "toolbar";
							icon = "fingerprint";
							id = 20;
						};
					};		
					extensions = {
					force = true;
						packages = with pkgs.nur.repos.rycee.firefox-addons; [
							multi-account-containers
							ublock-origin
							decentraleyes
							sidebery
							consent-o-matic	
							plasma-integration
							sponsorblock
							dearrow
							youtube-enhancer-vc
							return-youtube-dislikes
							reddit-enhancement-suite
						];
					};
					userChrome = 
						'' #tabbrowser-tabs { visability:collapse !important; } '';
				};
			};
		}
