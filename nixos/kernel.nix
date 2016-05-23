{ pkgs, ... }:

with pkgs.lib;

{
    boot.loader.grub.enable = true;
    boot.loader.grub.version = 2;
    boot.loader.grub.device = "/dev/sda";

    boot.kernelPackages = pkgs.linuxPackages_4_5;

    boot.kernelParams = [
        "elevator=noop"
        "ipv6.disable=1"
    ];
}
