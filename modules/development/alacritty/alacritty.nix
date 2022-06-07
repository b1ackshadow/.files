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
  colors = {
# Default colors
primary = {
  background = "0x000000"; #130d24";#0x1a202c";#"0x070707";#"0x292d3e";#"0x070707";#"0x1b182c";
  foreground = "0x5966cc";#"0xB19CD9";
};
# Normal colors
normal = {
  black =  "0x100e23";
  red =    "0xff8080";
  green =  "0xf77dc2";#0x95ffa4";
  yellow = "0xffe9aa";
  blue =   "0xf77dc2";
  magenta ="0xffffff";
  cyan =   "0xaaffe4";
  white =  "0xcbe3e7";
};

# Bright colors
bright = {
  black =   "0x565575";
  red =     "0xff5458";
  green =   "0xffffff";
  yellow =  "0xffb378";
  blue =    "0x1a202c";
  magenta = "0xffffff";
  cyan =    "0x63f2f1";
  white =   "0xa6b3cc";
};

    };


  }


