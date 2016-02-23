
{ pkgs, ... }:

with pkgs.lib;

{
    environment.systemPackages = with pkgs ; [
	vim
	mksh
    ];

    nixpkgs.config = {
        allowBroken = true;
        allowUnfree = true;
    };
}
