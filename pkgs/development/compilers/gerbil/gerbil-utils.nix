{ lib, fetchFromGitHub, ... }:

{
  pname = "gerbil-utils";
  version = "unstable-2022-01-12";
  git-version = "0.2-154-g31aded9";
  softwareName = "Gerbil-utils";
  gerbil-package = "clan";
  version-path = "version";

  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-utils";
    rev = "31aded9adc4e5821794b2b179cd2a1a92a9e3bb9";
    sha256 = "0hlmnjwh0gvhlqgs95kjws29b0b22wp1hk9qz4i0f24yvw8s59sc";
  };

  meta = with lib; {
    description = "Gerbil Clan: Community curated Collection of Common Utilities";
    homepage    = "https://github.com/fare/gerbil-utils";
    license     = licenses.lgpl21;
    platforms   = platforms.unix;
    maintainers = with maintainers; [ fare ];
  };
}
