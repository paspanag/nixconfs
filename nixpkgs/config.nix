{
	allowUnfree = true;
	packageOverrides = pkgs : with pkgs; rec {

		all = with pkgs; buildEnv {
			name = "all";
			paths = [
				htop
				zathura
				termite
				feh
				i3lock
				mpv
				compton
				imagemagick
				jmtpfs
				transmission
				arandr
				unzip
				firefox
				pavucontrol
				plan9port
				cowsay
				ranger
				git
			];
		};

	};
  
}
