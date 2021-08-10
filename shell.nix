let
  sources = import ./nix/sources.nix;
  neuron = (import sources.neuron).default;
in { pkgs ? import sources.nixpkgs { } }:

pkgs.mkShell { buildInputs = [ pkgs.vale neuron ]; }
