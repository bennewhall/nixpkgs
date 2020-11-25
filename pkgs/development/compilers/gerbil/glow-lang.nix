{ lib, fetchFromGitLab, gerbil-support, gerbilPackages, gerbil, ... }:
rec {
  pname = "glow-lang";
  version = "unstable-2021-02-26";
  git-version = "0.1.0";
  softwareName = "Glow";
  gerbil-package = "mukn/glow";
  version-path = "version";
  gerbilInputs = with gerbilPackages;
    [gerbil-utils gerbil-crypto gerbil-poo gerbil-persist gerbil-ethereum
     gerbil-libp2p smug-gerbil];
  pre-src = {
    fun = fetchFromGitLab;
    owner = "mukn";
    repo = "glow";
    rev = "a5ee3ad5077a7f9de09e0d70e239e561b083d088";
    sha256 = "0kvwxwrlp9gaircdyypkhjz06n1nd06qig13pvak5jv7q7cc4r24";
    };
  postInstall = ''
    mkdir -p $out/bin $out/gerbil/lib/mukn/glow $out/share/glow/dapps
    cp main.ss $out/gerbil/lib/mukn/glow/
    cp dapps/{buy_sig,coin_flip,rps_simple}.glow $out/share/glow/dapps
    cat > $out/bin/glow <<END
    #!/bin/sh
    ORIG_GERBIL_LOADPATH="\$GERBIL_LOADPATH"
    ORIG_GERBIL_PATH="\$GERBIL_PATH"
    GERBIL_LOADPATH="${gerbil-support.gerbilLoadPath (["$out"] ++ gerbilInputs)}"
    GLOW_SOURCE="\''${GLOW_SOURCE:-$out/share/glow}"
    GERBIL_PATH="\$HOME/.cache/glow/gerbil"
    export GERBIL_PATH GERBIL_LOADPATH GLOW_SOURCE ORIG_GERBIL_PATH ORIG_GERBIL_LOADPATH
    exec ${gerbil}/bin/gxi $out/gerbil/lib/mukn/glow/main.ss "\$@"
    END
    chmod a+x $out/bin/glow
    '';
  meta = {
    description = "Glow: language for safe Decentralized Applications (DApps)";
    homepage    = "https://glow-lang.org";
    license     = lib.licenses.asl20;
    platforms   = lib.platforms.unix;
    maintainers = with lib.maintainers; [ fare ];
  };
}
