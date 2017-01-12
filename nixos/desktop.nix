{ pkgs, config, fetchcurl, ... }:
{
	services.xserver = {
		enable = true;
		autorun = true;
		videoDrivers = ["intel"];
		layout = "us";
		resolutions = [{x=1366; y=768;}];
		deviceSection = ''
			Option "RenderAccel" "true"
		'';
		defaultDepth = 24;
		displayManager = {
			lightdm.enable = true;
		};
		windowManager.session = [
			# cwm
			{
				name = "cwm";
				start = ''
					${pkgs.cwm}/bin/cwm > /dev/null 2>&1 &
					waitPID=$!
				'';

			}
		];
		libinput = {
			enable = true;
			naturalScrolling = true;
		};
	};

	environment.systemPackages = with pkgs ; [
		gnome3.gtk
		gnome3.adwaita-icon-theme
		gnome2.gtk
		hicolor_icon_theme
	];
	environment.pathsToLink = ["/share"];
}
