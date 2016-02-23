{ config, pkgs, ... }:

with pkgs.lib;

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./hardware-configuration-extras.nix
      ./fonts.nix
      ./kernel.nix
      ./networking.nix
      ./packages.nix
      ./programs.nix
      ./services.nix
      ./xserver.nix
#      ./virtualization.nix
    ];

  i18n = {
     consoleFont = "Lat2-Terminus16";
     consoleKeyMap = "us";
     defaultLocale = "en_US.UTF-8";
  };

  time.timeZone = "America/Edmonton";

  system.stateVersion = "16.03";

  users.extraUsers.peter =
	{
		isNormalUser = true;
		home = "/home/peter";
		description = "Peter Panaguiton";
		extraGroups = [ "wheel" "networkmanager" ];
		shell = "/run/current-system/sw/bin/mksh";
	};

  users.defaultUserShell = "/run/current-system/sw/bin/mksh";

}
