
{ pkgs, ... }:

{
	environment.systemPackages = with pkgs ; [
		
		# stuff i really need
		vim

		# wm stuff
		rxvt_unicode
		i3lock
		cwm
		dzen2

		# apps
		htop
		zathura
		feh
		mpv
		compton
		imagemagick
		jmtpfs
		unzip
		chromium
		arandr
		pavucontrol
		plan9port
		ranger
		pcmanfm
		cmus
		firefox

		# dev stuff
		gitFull
		qemu
		vde2
		nasm
		texstudio
		texlive.combined.scheme-full
		emacs

		#android stuff
		#androidsdk
		#androidndk
		#idea.android-studio
		#android-udev-rules

		#games
		#steam
		#teamspeak_client
		#wineUnstable
		#winetricks
		#openldap
		
		#rice
		#this section is in ./desktop.nix
	];

	nixpkgs.config = {
		allowBroken = true;
		allowUnfree = true;
	};
}
