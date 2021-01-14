{ callPackage, fetchFromGitHub, gambit-unstable, gambit-support }:

callPackage ./build.nix rec {
  version = "unstable-2021-05-28";
  git-version = "0.16-189-g237627a4";
  src = fetchFromGitHub {
    owner = "vyzo";
    repo = "gerbil";
    rev = "237627a4bf573e372ed3cd539a35c0f8477b8879";
    sha256 = "1br42b7slyas4cjs0hhh85s9s0inag3d85jva8ym4di0k756v327";
  };
  inherit gambit-support;
  gambit = gambit-unstable;
  gambit-params = gambit-support.unstable-params;
}
