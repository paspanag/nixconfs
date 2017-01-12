{ pkgs, ... }:

{
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	boot.kernelPackages = pkgs.linuxPackages_4_8;

	boot.kernelParams = [
		"elevator=noop"
		"ipv6.disable=1"
	];
}
