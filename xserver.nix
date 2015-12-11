{ pkgs, ... }:

with pkgs.lib;

{
    services.xserver = {
        videoDrivers = ["ati" "intel"];
        autorun = true;
        enable = true;
        layout = "us";
        resolutions = [{x=1920; y=1080;}];
        deviceSection = ''
            Option "RenderAccel" "true"
        '';
        vaapiDrivers = [ pkgs.vaapiVdpau ];
        defaultDepth = 24;

        displayManager.gdm = {
            enable = true;
        };

        desktopManager.gnome3 = {
            enable = true;
        };
        
    };
}
