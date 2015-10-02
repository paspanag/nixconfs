with import <nixpkgs> {};

stdenv.mkDerivation {
	name = "";

	src = fetchgit {
		url = ; 
		revision = ;
		sha256 = ;
	};


	buildInputs = [
		libxcb
	];

	installFlags = [ "PREFIX=$(out)" ];

	meta =  with stdenv.lib; {
		description = "";
		homepage = ;
		license = "";
		maintainers = [  ];
	};
}
