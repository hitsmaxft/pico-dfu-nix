{ pkgs ? import <nixpkgs> { } }:
pkgs.writeShellApplication {
  name = "pico-dfu";
  text = builtins.readFile ./pico-dfu;
}
