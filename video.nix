
	{ pkgs, ... }:

		{
			environment.systemPackages = with pkgs; [
				haruna
				obs-studio
				# davinci-resolve
				ffmpeg
				yt-dlp
			];
		}
