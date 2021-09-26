{ pkgs ? import <nixpkgs> { overlays = (import ./nix/overlays.nix); } }:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.rust-bin.stable.latest.default
  ];

  buildInputs = [
    pkgs.nixpkgs-fmt
    pkgs.niv

    pkgs.clang_12
    pkgs.lld_12
    pkgs.rustup
    pkgs.glibc
  ];

  shellHook = ''
    export CC=clang
  '';
}