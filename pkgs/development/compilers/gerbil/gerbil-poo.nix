{ lib, fetchFromGitHub, gerbilPackages, ... }:
{
  pname = "gerbil-poo";
  version = "unstable-2021-02-25";
  git-version = "0.0-84-g4c7034a";
  softwareName = "Gerbil-POO";
  gerbil-package = "clan/poo";
  version-path = "version";
  gerbilInputs = with gerbilPackages; [gerbil-utils];
  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-poo";
    rev = "4c7034a4d1b828b2bb9dab3124aefedcfecf7326";
    sha256 = "1w4jcv9q4rcpi14w3nymkgzldhhc0dfslfa442y0yfna5zm6mrfr";
  };
  meta = {
    description = "Gerbil POO: Prototype Object Orientation for Gerbil Scheme";
    homepage    = "https://github.com/fare/gerbil-poo";
    license     = lib.licenses.asl20;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
