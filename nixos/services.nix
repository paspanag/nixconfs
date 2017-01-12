{ pkgs, ... }:

{
	services = {
		redshift = {
			enable = true;
			latitude = "51";
			longitude = "-114";
		};
		compton = {
			enable = true;
			fade = true;
			fadeDelta = 3;
		};

	};

}
