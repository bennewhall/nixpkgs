{ lib, fetchFromGitHub, gerbilPackages, ... }:
{
  pname = "gerbil-persist";
  version = "unstable-2021-02-25";
  git-version = "0.0-16-gc5cc662";
  softwareName = "Gerbil-persist";
  gerbil-package = "clan/persist";
  version-path = "version";
  gerbilInputs = with gerbilPackages; [gerbil-utils gerbil-crypto gerbil-poo];
  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-persist";
    rev = "c5cc662e078355f625911e0463de070c40f112c9";
    sha256 = "1zchgfg7ylpaw3jb01rka0724liapgyb1zxy5p1bz6vrb6ask72l";
  };
  meta = {
    description = "Gerbil Persist: Persistent data and activities";
    homepage    = "https://github.com/fare/gerbil-persist";
    license     = lib.licenses.asl20;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
