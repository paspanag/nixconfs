
{ pkgs, ... }:

with pkgs.lib;

{
    environment.systemPackages = with pkgs ; [
        git
        ranger
	vim
        light
	mksh
#	sxhkd
#	bspwm
    ];

    nixpkgs.config = {
        allowBroken = true;
        allowUnfree = true;
    };
}
