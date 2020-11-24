{ lib, fetchFromGitHub, gerbilPackages, ... }:
{
  pname = "gerbil-ethereum";
  version = "unstable-2021-02-26";
  git-version = "0.0-203-gc970a44";
  softwareName = "Gerbil-ethereum";
  gerbil-package = "mukn/ethereum";
  version-path = "version";
  gerbilInputs = with gerbilPackages; [gerbil-utils gerbil-crypto gerbil-poo gerbil-persist];
  pre-src = {
    fun = fetchFromGitHub;
    owner = "fare";
    repo = "gerbil-ethereum";
    rev = "c970a443d3fcbbb3f341fab780ea5ef66c7f01ad";
    sha256 = "168n2c1wpmdigp3izl3vhnm5am5hjf7bn6xy8zzwpkmk13g566z4";
  };
  postInstall = ''
    cp scripts/{croesus.prv,genesis.json,logback.xml,yolo-evm.conf,yolo-kevm.conf} $out/gerbil/lib/mukn/ethereum/scripts/
    '';
  meta = {
    description = "Gerbil Ethereum: a Scheme alternative to web3.js";
    homepage    = "https://github.com/fare/gerbil-ethereum";
    license     = lib.licenses.asl20;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
