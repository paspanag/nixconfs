{ config, pkgs, ... }:

with pkgs.lib;

{
	imports = [ 
		./hardware-configuration.nix
		./hardware-configuration-extras.nix
		./fonts.nix
		./kernel.nix
		./networking.nix
		./packages.nix
		./programs.nix
		./desktop.nix
		./services.nix
		./virtualisation.nix
	];

	i18n = {
		consoleFont = "Lat2-Terminus16";
		consoleKeyMap = "us";
		defaultLocale = "en_US.UTF-8";
	};

	time.timeZone = "America/Edmonton";

	system.stateVersion = "17.03";

	users = {
		extraUsers.peter = {
			isNormalUser = true;
			home = "/home/peter";
			description = "Peter Panaguiton";
			extraGroups = [ "wheel" "kvm" ];
		};
	};

}
