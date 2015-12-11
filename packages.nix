
{ pkgs, ... }:

with pkgs.lib;

{
    environment.systemPackages = with pkgs ; [
	vim
	mksh
	firefox
	git
    ];

    nixpkgs.config = {
        allowBroken = true;
        allowUnfree = true;
    };
}
