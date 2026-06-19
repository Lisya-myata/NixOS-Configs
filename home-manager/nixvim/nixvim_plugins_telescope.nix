
    { ... }:

	{
	    
	    programs.nixvim.keymaps = [
		
		{
		#
		 key = "<leader>ff";
		 action = ":Telescope find_files<CR>";
		 mode = "n";
		}
		
		{
		#
		 key = "<leader>fg";
		 action = ":Telescope live_grep<CR>";
		 mode = "n";
		}

		{
		#
		 key = "<leader>fb";
		 action = ":Telescope buffers<CR>";
		 mode = "n";
		}

		{
		#
		 key = "<leader>fh";
		 action = ":Telescope help_tags<CR>";
		 mode = "n";
		}
	    ];
	}
