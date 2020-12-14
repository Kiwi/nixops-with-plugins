let
  pkgs = import (fetchTarball "channel:nixos-20.09") {};
#  pkgs = import <nixpkgs> {};
#  pkgs = import (fetchTarball {
#    url = "https://github.com/nixos/nixpkgs/tarball/96069f7d890b90cbf4e8b4b53e15b036210ac146";
#    sha256 = "0ixyfsw7p0gq9w7hzamgnvk8xjnf62niygmpi39zh2a312k94lqr";
#  }) {};
in
  import ./withplug.nix { inherit pkgs; }
