{ pkgs, ... }:

with pkgs.lib;

{
    services.xserver = {
        videoDrivers = ["intel" "i965"];
        autorun = true;
        enable = true;
        layout = "us";
        driSupport = true;
        resolutions = [{x=1366; y=768;}];
        deviceSection = ''
            Option "RenderAccel" "true"
        '';
        vaapiDrivers = [ pkgs.vaapiIntel ];
        defaultDepth = 24;

        displayManager.lightdm = {
            enable = true;
        };

        windowManager.i3.enable = true;
        #windowManager.openbox.enable = true;

        #windowManager.session = singleton
        #{
        #	name = "nowm";
        #	start = ''
        #		source $HOME/.startup
        #		${pkgs.sxhkd}/bin/sxhkd -c $HOME/.config/sxhkdrc > /dev/null 2>&1 &
        #		waitPID=$!
        #		'';
        #
        #};
        #desktopManager.xterm.enable = false;

        synaptics = {
            enable = true;
            accelFactor = "0.05";
            maxSpeed = "10";

            palmDetect = true;
            twoFingerScroll = true;
            fingersMap = [ 1 3 2 ];
            horizEdgeScroll = false;
            vertEdgeScroll = false;
            horizTwoFingerScroll = true;
            vertTwoFingerScroll = true;
            additionalOptions = ''
                MatchProduct "ETPS"
                Option "FingerLow"                 "3"
                Option "FingerHigh"                "5"
                Option "FingerPress"               "30"
                Option "MaxTapTime"                "100"
                Option "MaxDoubleTapTime"          "150"
                Option "FastTaps"                  "0"
                Option "PalmMinWidth"              "5"
                Option "PalmMinZ"                  "100"
                Option "TrackstickSpeed"           "0"
                Option "LTCornerButton"            "3"
                Option "LBCornerButton"            "2"
                Option "CoastingFriction"          "20"
            '';
        };
    };
}
