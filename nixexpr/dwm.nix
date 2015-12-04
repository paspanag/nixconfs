with import <nixpkgs> {}; 

stdenv.mkDerivation rec {
  name = "dwm";

  src = fetchgit {
    url = "https://github.com/chneukirchen/cwm";
    rev = "3f0b6cf4ea53d80ef7e2d9a96f4d93bb209aa2b6";
    sha256 = "1msqb0b6qx2jz5kqs7zaa2adwdcmlaxc0dv827jm01810c4di21l";
  };

  buildInputs = [
    xlibs.libX11 xlibs.libXinerama xlibs.libXrandr xlibs.libXft 
  ];

  prePatch = ''sed -i "s@/usr/local@$out@" config.mk'';

  meta = with stdenv.lib; {
    description = "A stacking window manager";
    homepage = "https://github.com/chneukirchen/cwm";
    maintainers = [];
    license     = licenses.bsd3;
    platforms   = platforms.all;

    longDescription = ''
	cwm on nixos
    '';
  };

}
