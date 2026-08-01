  
	{ ... }:

		{
			programs.git = {
				enable = true;
				settings = {
					user.name = "Lisya-myata";
					user.email = "Lisya.Git@proton.me";
					init.defaultBranch = "main";
					core.editor = "neovide";
				};
			};
  
			programs.lazygit = {
				enable = true;
			};
		}
