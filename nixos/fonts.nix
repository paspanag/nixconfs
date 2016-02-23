{ pkgs, ... }:

with pkgs.lib;

{
    fonts = {
        fontconfig.enable = true;
        fontconfig.ultimate.enable = true;
        fontconfig.ultimate.substitutions = "combi";
	fontconfig.hinting.autohint = false;
	fontconfig.subpixel.lcdfilter = "default";
        enableFontDir = true;
        fonts = with pkgs ; [
            terminus_font
            ubuntu_font_family
	    font-awesome-ttf
	    fira
	    fira-code
	    fira-mono
	    gohufont
        ];
    };
}
