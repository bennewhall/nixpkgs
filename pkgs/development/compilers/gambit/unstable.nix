{ callPackage, fetchFromGitHub, gambit-support }:

callPackage ./build.nix {
  version = "unstable-2021-02-25";
  git-version = "4.9.3-1305-gce9f6964";
  src = fetchFromGitHub {
    owner = "feeley";
    repo = "gambit";
    rev = "ce9f696445ad948b2e7a05701ef42879d8dc5a8a";
    sha256 = "0jl297csc5sc2s7d1505mh06pkshhx147xndzm8ld0y6dws0zjmb";
  };
  gambit-params = gambit-support.unstable-params;
}
