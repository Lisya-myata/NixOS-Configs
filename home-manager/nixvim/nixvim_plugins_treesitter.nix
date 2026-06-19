
    { config, ... }:

	{
	    programs.nixvim.plugins.treesitter = {
		highlight.enable = true;
		indent.enable = true;
		folding.enable = true;
		
		grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
		    bash
		    json
		    lua
		    make
		    markdown
		    nix
		    regex
		    toml
		    vim
		    vimdoc
		    xml
		    yaml
	   ];
	 };
	}
