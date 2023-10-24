#
#   Alacritty
#
pkgs:
{
  shell.program = "${pkgs.zsh}/bin/zsh";
  env = {
    "TERM" = "xterm-256color";	
  };
  window = {
    padding.x = 8;
    padding.y = 4;
    opacity = 0.7;
  };
  scrolling.history = 10000;
  font = {
    size = 11;


    normal.family = "SauceCodePro Nerd Font Mono";
    bold.family = "SauceCodePro Nerd Font Mono";
    italic.family = "SauceCodePro Nerd Font Mono";

    glyph_offset = {
      x = 0;
      y = 0;
    };
  };
  cursor.style = "Beam";
#   colors = {
# # Default colors
#     primary = {
#       background = "0x000000"; #130d24";#0x1a202c";#"0x070707";#"0x292d3e";#"0x070707";#"0x1b182c";
#       foreground = "0x5966cc";#"0xB19CD9";
#     };
# # Normal colors
#     normal = {
#       black =  "0x100e23";
#       red =    "0xff8080";
#       green =  "0xf77dc2";#0x95ffa4";
#       yellow = "0xffe9aa";
#       blue =   "0xf77dc2";
#       magenta ="0xffffff";
#       cyan =   "0xaaffe4";
#       white =  "0xcbe3e7";
#     };
#
# # Bright colors
#     bright = {
#       black =   "0x565575";
#       red =     "0xff5458";
#       green =   "0xffffff";
#       yellow =  "0xffb378";
#       blue =    "0x1a202c";
#       magenta = "0xffffff";
#       cyan =    "0x63f2f1";
#       white =   "0xa6b3cc";
#     };
#
#   };
# Midnight Haze theme
  colors = {

# Default colors
    primary = {
      background =  "0x0c0c16";
      foreground = "0xd8dee9";
    };

# Normal colors
    normal= {

      black=   "0x2c2c3d";
      red=     "0xff6e6e";
      green=   "0x9ec875";
      yellow=  "0xffa759";
      blue=    "0x70a7d4";
      magenta= "0xd291e0";
      cyan=    "0x96e0e0";
      white=   "0xd8dee9";

    };
# Bright colors
    bright= {

      black =   "0x414166";
      red =     "0xff8d8d";
      green =   "0xb3d987";
      yellow =  "0xffc57f";
      blue =    "0x9bb3d3";
      magenta = "0xffa1ff";
      cyan =    "0x9cd8d8";
      white =   "0xffffff";
    };

  };
}
