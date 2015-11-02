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

        windowManager.session = [
		# xmonad
		#{
		#	name = "xmonad";
		#	start = ''
		#		source $HOME/.startup
		#		${pkgs.xmonad-with-packages}/bin/xmonad > /dev/null 2>&1 &
		#		waitPID=$!
		#		'';
	        #
		#}
		# cwm
		{
			name = "cwm";
			start = ''
				source $HOME/.startup
				$HOME/.nix-profile/bin/cwm > /dev/null 2>&1 &
				waitPID=$!
				'';
		
		}
		#bspwm
		#{
		#	name = "bspwm";
		#	start = ''
		#		source $HOME/.startup
		#		${pkgs.sxhkd}/bin/sxhkd -c $HOME/.config/sxhkd/sxhkdrc > /dev/null 2>&1 &
		#		${pkgs.bspwm}/bin/bspwm -c $HOME/.config/bspwm/bspwmrc > /dev/null 2>&1 &
		#		waitPID=$!
		#		'';
	       	#
		#}
	];
        
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
