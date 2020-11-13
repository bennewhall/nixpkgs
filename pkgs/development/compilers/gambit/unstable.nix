{ callPackage, fetchFromGitHub, gambit-support }:

callPackage ./build.nix {
  version = "unstable-2021-06-04";
  git-version = "4.9.3-1425-g87f8722b";
  src = fetchFromGitHub {
    owner = "feeley";
    repo = "gambit";
    rev = "87f8722bbe342a0b194664d88953dca2464699ed";
    sha256 = "09mydyaq6bkfc73c21l2x23wwdsh142kzbpfibfbml8lmnsylk0d";
  };
  gambit-params = gambit-support.unstable-params;
}
