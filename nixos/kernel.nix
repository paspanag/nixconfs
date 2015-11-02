{ pkgs, ... }:

with pkgs.lib;

{
    boot.loader = {
        gummiboot.enable = true;
        efi.canTouchEfiVariables = true;
    };

    boot.kernelPackages = pkgs.linuxPackages_4_2;

    boot.kernelParams = [
        "elevator=noop"
        "ipv6.disable=1"
    ];

    #boot.kernelModules = [ "kvm-intel" "tun" "virtio" ];

}
