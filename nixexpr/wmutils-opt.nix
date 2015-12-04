with import <nixpkgs> {};

stdenv.mkDerivation rec {
	name = "wmutils-opt";

	src = fetchgit {
		url = "https://github.com/wmutils/opt";
		rev = "00fb88f80f2c42cdd664dc678430e77587cd392c";
		sha256 = "0938dnx9ql0b91igw9j59grfcjhgn7s31pdvb1ixfs6w4d2g1kcr";
	};


	buildInputs = [
		xlibs.libxcb
	];

	installFlags = [ "PREFIX=$(out)" ];

	meta =  with stdenv.lib; {
		description = "opt utilies - wmutils";
		homepage = https://github.com/wmutils;
		license = "";
		maintainers = [  ];
	};
}
