{ config, pkgs, ... }:

with pkgs.lib;

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./hardware-configuration-extras.nix
      ./networking.nix
      ./kernel.nix
      ./xserver.nix
      ./services.nix
      ./security.nix
      ./packages.nix
      ./fonts.nix
    ];

  i18n = {
     consoleFont = "Lat2-Terminus16";
     consoleKeyMap = "us";
     defaultLocale = "en_US.UTF-8";
  };

  time.timeZone = "America/Edmonton";

#  programs.zsh.enable = true;

  system.stateVersion = "15.08";

  users.extraUsers.peter =
	{
		isNormalUser = true;
		home = "/home/peter";
		description = "Peter Panaguiton";
		extraGroups = [ "wheel" "networkmanager" ]; # "libvirtd"];
		shell = "/run/current-system/sw/bin/mksh";
	};

  users.defaultUserShell = "/run/current-system/sw/bin/mksh";

}
