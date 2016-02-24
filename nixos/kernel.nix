{ pkgs, ... }:

with pkgs.lib;

{
    boot.loader.grub.enable = true;
    boot.loader.grub.version = 2;
    boot.loader.grub.efiSupport = true;
    boot.loader.grub.device = "nodev";
    boot.kernelPackages = pkgs.linuxPackages_4_3;

    boot.kernelParams = [
        "elevator=noop"
        "ipv6.disable=1"
    ];
}
