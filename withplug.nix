{ pkgs }:
#{ pkgs ? import <nixpkgs> {} }:
let
  nixops = import ./nixops-pluggable.nix { inherit pkgs; };
in
(
  nixops.withPlugins (
    ps: [
#      ps.nixops-aws
#      ps.nixops-virtd
#      ps.nixopsvbox
      ps.nixops-digitalocean
    ]
  )
)
