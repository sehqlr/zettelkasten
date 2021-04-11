{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.epr
    pkgs.tectonic
    pkgs.pandoc
    pkgs.vale
  ];
}
