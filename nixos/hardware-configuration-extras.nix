{ ... }:

{
    hardware = {
        #enableAllFirmware = true;
        opengl.driSupport = true;
        pulseaudio.enable = true;
        bluetooth.enable = false;
    };

    powerManagement = {
        enable = true;
    };
}
