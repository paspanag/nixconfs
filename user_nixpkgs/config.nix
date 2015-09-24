{
  packageOverrides = pkgs_: with pkgs_; {
    all = with pkgs; buildEnv {
      name = "all";
      paths = [
	cmus
	meld
	htop
	zathura
	termite
	feh
	dmenu2
	i3lock
	i3status
	mpv
	volumeicon
	networkmanagerapplet
	pavucontrol
	chromium
	compton
	imagemagick
	jmtpfs
#	fusesmb
	transmission
	atom
	arandr
#	samba4Full
	unzip
      ];
    };
  };
}
