{ lib, fetchFromGitHub, gerbilPackages, ... }:

{
  pname = "ftw";
  version = "unstable-2021-06-30";
  git-version = "master";
  softwareName = "FTW: For The Web!";
  gerbil-package = "drewc/smug";

  gerbilInputs = with gerbilPackages; [ gerbil-utils ];

  pre-src = {
    fun = fetchFromGitHub;
    owner = "drewc";
    repo = "ftw";
    rev = "22fb47f3832a254c459a8294a43c3a6fae7687e0";
    sha256 = "1yibpwk3556zkd55yp0iv4sh4yk22dglhgaxj4b4r9q8i0a2fhdm";
  };

  meta = with lib; {
    description = "Simple web handlers for Gerbil Scheme";
    homepage    = "https://github.com/drewc/ftw";
    license     = licenses.mit;
    platforms   = platforms.unix;
    maintainers = with maintainers; [ fare ];
  };
}
