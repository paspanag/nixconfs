
{ pkgs, ... }:

with pkgs.lib;

{
    environment.systemPackages = with pkgs ; [
        git
        ranger
        neovim
        light
    ];

    nixpkgs.config = {
        allowBroken = true;
        allowUnfree = true;

        #	chromium = {
        #		 enablePepperFlash = true;
        #		 enablePepperPDF = true;
        #	};
    };
}
