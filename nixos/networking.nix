{ pkgs, ... }:

{
	networking = {
		hostName = "nixie";
		wireless = {
			enable = true;
			networks = {
				panaguiton2g = {
					psk = "panaguiton";
				};
				TELUS5131 = {
					psk = "5dd4zc6z2k";
				};
				LibraryWiFiHotSpot = {};
			};
		};
#		localCommands =
#			''
#			${pkgs.vde2}/bin/vde_switch -tap tap0 -mod 660 -group kvm -daemon
#			ip addr add 10.0.2.1/24 dev tap0
#			ip link set dev tap0 up
#			${pkgs.procps}/sbin/sysctl -w net.ipv4.ip_forward=1
#			${pkgs.iptables}/sbin/iptables -t nat -A POSTROUTING -s 10.0.2.0/24 -j MASQUERADE
#			'';
	};
}
