{ callPackage, fetchFromGitHub, gambit-unstable, gambit-support }:

callPackage ./build.nix rec {
  version = "unstable-2022-01-05";
  git-version = "0.16-267-g32e5bbf6";
  src = fetchFromGitHub {
    owner = "vyzo";
    repo = "gerbil";
    rev = "3dd0d0384b0148bb6c82fc8e4efb4ca3f893acf2";
    sha256 = "sha256-q6wDEIGdtXt1shDPscKPgYZLnUr7K83aplTrL0A9p34=";
  };
  inherit gambit-support;
  gambit = gambit-unstable;
  gambit-params = gambit-support.unstable-params;
}
