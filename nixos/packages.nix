
{ pkgs, ... }:

with pkgs.lib;

{
    environment.systemPackages = with pkgs ; [
	vim
	mksh
	termite
	i3lock
	cwm
    ];

    nixpkgs.config = {
        allowBroken = true;
        allowUnfree = true;
    };
}
