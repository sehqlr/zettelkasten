{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.gnumake
    pkgs.epr
    pkgs.tectonic
    pkgs.pandoc
    pkgs.vale
  ];
}
