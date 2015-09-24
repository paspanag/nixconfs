
{ pkgs, ... }:

with pkgs.lib;

{
    environment.systemPackages = with pkgs ; [
        #emacs
        git
        ranger
        neovim
        #libnotify
        #wmutils-core
        #sxhkd
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
