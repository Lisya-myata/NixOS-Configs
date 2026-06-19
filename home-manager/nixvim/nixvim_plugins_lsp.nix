
    { ... }:
	
	{

	    programs.nixvim.plugins.lsp = {
	     servers = {
		# nix
		 nixd.enable = true;    
		#
		 fish_lsp.enable = true;
		#
	     };
	    };
	    
	    programs.nixvim.keymaps = [
	    
		{
		# Inspects a LSP marker.
		key = "<leader>d";
		action = "<cmd>lua vim.diagnostic.open_float()<CR>";
		mode = "n";
		}
	    ];
	}
