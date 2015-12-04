
{ pkgs, ... }:

with pkgs.lib;

{
    environment.systemPackages = with pkgs ; [
	vim
        light
	mksh
    ];

    nixpkgs.config = {
        allowBroken = true;
        allowUnfree = true;
    };
}
