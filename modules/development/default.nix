pkgs:

# This is not exactly a module we are basically importing multiple config through this nix file.

[
  #pkgs.callPackages ./nvim {}
  ./alacritty
]
