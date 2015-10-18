
{ pkgs, ... }:

with pkgs.lib;

{
    environment.systemPackages = with pkgs ; [
        git
        ranger
        neovim
        light
	mksh
    ];

    nixpkgs.config = {
        allowBroken = true;
        allowUnfree = true;
    };
}
