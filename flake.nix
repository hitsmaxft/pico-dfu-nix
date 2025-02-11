{
  description = "A flake for building the bard-cli Go project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-24.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        callPackage = pkgs.callPackage;
        pico-dfu = callPackage ./default.nix { };
      in { packages.default = pico-dfu; });
}
