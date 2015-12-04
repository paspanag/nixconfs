with import <nixpkgs> {}; 

stdenv.mkDerivation rec {
  name = "twobwm";

  src = fetchgit {
    url = "https://github.com/venam/2bwm";
    rev = "7c80ce4527efe2c17443cc0530bdeb9a8a6a9211";
    sha256 = "1xm6imkwz9shcsx6wfazvfgh1wcb1d4fc5g2p14p676a8c7l8p39";
  };

  buildInputs = [
    xlibs.xcbutilkeysyms xlibs.xcbutil xlibs.xcbutilwm xlibs.libX11
  ];

  prePatch = ''sed -i "s@/usr/local@$out@" Makefile'';

  meta = with stdenv.lib; {
    description = "A stacking window manager";
    homepage    = "http://github.com/venam/2bwm";
    maintainers = [];
    license     = licenses.bsd3;
    platforms   = platforms.all;

    longDescription = ''
	2bwm on nixos
    '';
  };

}
