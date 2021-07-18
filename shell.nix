let
  sources = import ./nix/sources.nix {};
  pkgs = import sources.nixpkgs {
    overlays = [
      (self: super: { niv = (import sources.niv {}).niv;})
    ];   
  };
in
 with pkgs;
 runCommand "capnp-test-suite" {
   buildInputs = [
     niv capnproto
   ] ++ stdenv.lib.optionals stdenv.isLinux [
   ] ++ stdenv.lib.optionals stdenv.isDarwin [
     darwin.apple_sdk.frameworks.CoreServices
   ];
 } ''
    mkdir $out
    env > $out/env-vars
    for k in $buildInputs ; do
      ln -s $k $out/$(basename $k)
    done
  ''