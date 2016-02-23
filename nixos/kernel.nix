{ pkgs, ... }:

with pkgs.lib;

{
    boot.loader.gummiboot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    boot.kernelPackages = pkgs.linuxPackages_4_3;

    boot.kernelParams = [
        "elevator=noop"
        "ipv6.disable=1"
    ];
}
