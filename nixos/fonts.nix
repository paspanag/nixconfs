{ pkgs, ... }:

with pkgs.lib;

{
    fonts = {
        fontconfig.enable = true;
        fontconfig.ultimate.enable = true;
        fontconfig.ultimate.substitutions = "combi";
        enableFontDir = true;
        enableCoreFonts = true;
        enableGhostscriptFonts = true;
        fonts = with pkgs ; [
            liberation_ttf
            corefonts
            ttf_bitstream_vera
            dejavu_fonts
            terminus_font
            bakoma_ttf
            bakoma_ttf
            ubuntu_font_family
            vistafonts
            unifont
            freefont_ttf
        ];
    };
}
