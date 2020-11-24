{ lib, fetchFromGitHub, ... }:
{
  pname = "gerbil-utils";
  version = "unstable-2021-02-26";
  git-version = "0.2-106-g48da2d2";
  softwareName = "Gerbil-utils";
  gerbil-package = "clan";
  version-path = "version";
  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-utils";
    rev = "48da2d29c1d6cf343b9a70255666c43226f2b71c";
    sha256 = "19kbddib4fqxmp46zkg49v7wslcfybrf3s8j557ygqfgbbv9w8k4";
  };
  meta = {
    description = "Gerbil Clan: Community curated Collection of Common Utilities";
    homepage    = "https://github.com/fare/gerbil-utils";
    license     = lib.licenses.lgpl21;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
