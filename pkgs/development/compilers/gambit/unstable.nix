{ callPackage, fetchFromGitHub, gambit-support }:

callPackage ./build.nix {
  version = "unstable-2021-06-18";
  git-version = "4.9.3-1452-g804e1477";
  src = fetchFromGitHub {
    owner = "feeley";
    repo = "gambit";
    rev = "804e147770c221050b268f4436e2e5285767f6f3";
    sha256 = "0df93k62sn85i48m3qv32d9jxl5gs03fdm9vxb312p1fd5hs5qch";
  };
  gambit-params = gambit-support.unstable-params;
}
