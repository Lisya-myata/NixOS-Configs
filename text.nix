
	{ pkgs, ... }:
    
		{
			environment.systemPackages = with pkgs; [ 
				obsidian
				libreoffice-fresh
				zotero
				foliate
			];    
		}
