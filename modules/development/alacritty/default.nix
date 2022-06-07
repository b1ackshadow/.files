{pkgs, ...}:

{
  programs.alacritty = {
    enable = true;
    settings = import ./alacritty.nix pkgs;
  };
}
