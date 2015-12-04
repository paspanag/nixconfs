with import <nixpkgs> {};

stdenv.mkDerivation rec {
	name = "wmutils-core";

	src = fetchgit {
		url = "https://github.com/wmutils/core";
		rev = "7b86e8b8e80cd91e7cd7c4e2b8c8be51db7e1c91";
		sha256 = "1s6rralx5kapi0c94jr8295lyimf5wy88my5zflm8n8ym4lbhzm7";
	};


	buildInputs = [
		xlibs.libxcb
	];

	installFlags = [ "PREFIX=$(out)" ];

	meta =  with stdenv.lib; {
		description = "core utilies - wmutils";
		homepage = https://github.com/wmutils;
		license = "";
		maintainers = [  ];
	};
}
