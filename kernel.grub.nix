{ pkgs, ... }:

with pkgs.lib;

{
    boot.loader.grub.enable = true;
    boot.loader.grub.version = 2;

    boot.kernelPackages = pkgs.linuxPackages_4_2;

    boot.kernelParams = [
        "elevator=noop"
        "ipv6.disable=1"
    ];
}
