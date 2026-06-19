
    { ... }:

	{
	    programs.nixvim = {
		#Toggles leader timeout and sets it to 30000ms (30 seconds)
		opts = {
		timeout = true;
		timeoutlen = 30000;
	      };
		#Sets leader character as space
		globals = {
		mapleader = " ";
		maplocalleader = " ";
	      };
		
		keymaps = [
		    
		    {
		    #Open nixvim file explorer
		     key = "<leader>cd";
		     action = ":NvimTreeOpen<CR>";
		     mode = "n";
		}
	   ];
	 };
	}
