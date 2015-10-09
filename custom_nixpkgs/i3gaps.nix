with import <nixpkgs> {}; 

stdenv.mkDerivation rec {
  name = "i3gaps";
  version = "next";

  src = fetchgit {
    url = "https://github.com/Airblader/i3";
    rev = "d37ab011fc235257bab8a0aead77e9192dd98711";
    sha256 = "11hwpahaxw78i6y5mcqlssvg77vhg6l1b5jvy1rp0hgs8rs1yz0s";
  };

  buildInputs = [
    which pkgconfig makeWrapper xlibs.libxcb xlibs.xcbutilkeysyms xlibs.xcbutil xlibs.xcbutilwm libxkbcommon
    libstartup_notification xlibs.libX11 pcre libev yajl xcb-util-cursor perl pango
    perlPackages.AnyEventI3 perlPackages.X11XCB perlPackages.IPCRun
    perlPackages.ExtUtilsPkgConfig perlPackages.TestMore perlPackages.InlineC
    xlibs.xorgserver xvfb_run
  ];

  postPatch = ''
    patchShebangs .
  '';

  # Tests have been failing (at least for some people in some cases)
  # and have been disabled until someone wants to fix them. Some
  # initial digging uncovers that the tests call out to `git`, which
  # they shouldn't, and then even once that's fixed have some
  # perl-related errors later on. For more, see
  # https://github.com/NixOS/nixpkgs/issues/7957
  doCheck = false; # stdenv.system == "x86_64-linux";

  checkPhase = stdenv.lib.optionalString (stdenv.system == "x86_64-linux")
  ''
    (cd testcases && xvfb-run ./complete-run.pl -p 1 --keep-xserver-output)
    ! grep -q '^not ok' testcases/latest/complete-run.log
  '';

  configurePhase = "makeFlags=PREFIX=$out";

  postInstall = ''
    wrapProgram "$out/bin/i3-save-tree" --prefix PERL5LIB ":" "$PERL5LIB"
    mkdir -p $out/man/man1
    cp man/*.1 $out/man/man1
    for program in $out/bin/i3-sensible-*; do
      sed -i 's/which/command -v/' $program
    done
  '';

  meta = with stdenv.lib; {
    description = "A tiling window manager";
    homepage    = "http://i3wm.org";
    maintainers = with maintainers; [ garbas modulistic ];
    license     = licenses.bsd3;
    platforms   = platforms.all;

    longDescription = ''
      A tiling window manager primarily targeted at advanced users and
      developers. Based on a tree as data structure, supports tiling,
      stacking, and tabbing layouts, handled dynamically, as well as
      floating windows. Configured via plain text file. Multi-monitor.
      UTF-8 clean.
    '';
  };

}
