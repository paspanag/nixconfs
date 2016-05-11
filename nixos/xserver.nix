{ pkgs, ... }:

with pkgs.lib;

{
    services.xserver = {
        videoDrivers = ["intel"];
        autorun = true;
        enable = true;
        layout = "us";
        resolutions = [{x=1920; y=1080;}];
        deviceSection = ''
            Option "RenderAccel" "true"
        '';
        vaapiDrivers = [ pkgs.vaapiIntel ];
        defaultDepth = 24;

        displayManager.lightdm = {
            enable = true;
        };

	windowManager.i3.enable = true;
    };
}
