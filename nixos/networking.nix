{ ... }:

{
    networking = {
	hostName = "nixie"; # Define your hostname.
	interfaceMonitor.enable = false;
	wireless.enable = false; # Don't run wpa_supplicant (wicd will do it when necessary)
	useDHCP = false; # Don't run dhclient on wlan0
	wicd.enable = true;
#        networkmanager.enable = true;
    };
}
