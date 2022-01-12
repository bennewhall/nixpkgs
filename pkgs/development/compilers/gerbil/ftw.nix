{ lib, fetchFromGitHub, gerbilPackages, ... }:

{
  pname = "ftw";
  version = "unstable-2022-01-05";
  git-version = "298787a";
  softwareName = "FTW: For The Web!";
  gerbil-package = "drewc/smug";

  gerbilInputs = with gerbilPackages; [ gerbil-utils ];

  pre-src = {
    fun = fetchFromGitHub;
    owner = "drewc";
    repo = "ftw";
    rev = "298787af95e544f873563c5f947f779c0e22b854";
    sha256 = "1hwyvp2671iwc563wdinzrv2572b5h67iyyww3y3g0ldds0lss26";
  };

  meta = with lib; {
    description = "Simple web handlers for Gerbil Scheme";
    homepage    = "https://github.com/drewc/ftw";
    license     = licenses.mit;
    platforms   = platforms.unix;
    maintainers = with maintainers; [ fare ];
  };
}
