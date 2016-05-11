
{ pkgs, ... }:

with pkgs.lib;

{
    environment.systemPackages = with pkgs ; [
	vim
	mksh
	termite
	i3status
	chromium
    ];

    nixpkgs.config = {
        allowBroken = true;
        allowUnfree = true;
    };
}
