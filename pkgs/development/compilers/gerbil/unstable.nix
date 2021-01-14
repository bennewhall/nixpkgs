{ callPackage, fetchFromGitHub, gambit-unstable, gambit-support }:

callPackage ./build.nix rec {
  version = "unstable-2021-02-12";
  git-version = "0.16-162-g24424535";
  src = fetchFromGitHub {
    owner = "vyzo";
    repo = "gerbil";
    rev = "2442453543b02408300d354671adaa8cb3ad4fb6";
    sha256 = "09b9rd2wamcdmvqgkmy0h982knwkm66jq6i0rc5pbv9y4gim7jfr";
  };
  inherit gambit-support;
  gambit = gambit-unstable;
  gambit-params = gambit-support.unstable-params;
}
