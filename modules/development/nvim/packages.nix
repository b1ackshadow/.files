pkgs:
{
  tmuxline = pkgs.vimUtils.buildVimPlugin {
    name = "tmuxline";
    src = pkgs.fetchFromGitHub {
      owner = "edkolev";
      repo = "tmuxline.vim";
      rev = "4119c553923212cc67f4e135e6f946dc3ec0a4d6";
      sha256 = "0gs2jghs1a9sp09mlphcpa1rzlmxmsvyaa7y20w6qsbczz989vm3";
    };
  };
  dashboard-nvim = pkgs.vimUtils.buildVimPlugin {
    name = "dashboard-nvim";
    src = pkgs.fetchFromGitHub {
      owner = "glepnir";
      repo = "dashboard-nvim";
      rev = "ba98ab86487b8eda3b0934b5423759944b5f7ebd";
      sha256 = "1gyk0n8ks7xyjqab0gb7yx4ypl9k7csfjgmha84hy7mz4h08fkxq";
    };
  };
  formatter = pkgs.vimUtils.buildVimPlugin {
    name = "formatter";
    src = pkgs.fetchFromGitHub {
      owner = "mhartington";
      repo = "formatter.nvim";
      rev = "51f10c8acc610d787cad2257224cee92b40216e5";
      sha256 = "15jkrypcd3fa6vcz035yvcpd1rfrxcwvp93mqnihm0g1a74klrql";
    };
  };
  which-key = pkgs.vimUtils.buildVimPlugin {
    name = "which-key";
    src = pkgs.fetchFromGitHub {
      owner = "folke";
      repo = "which-key.vim";
      rev = "b582c9d78f0d105041ed29ec3a8ee11d98ddfd50";
      sha256 = "00k4x121v5zmd70xn24ipiqnpvzlvbv5p089mxsd0wpkng3q31ks";
    };
  };
  #hop = pkgs.vimUtils.buildVimPlugin {
  #  name = "hop";
  #  src = pkgs.fetchFromGitHub {
  #    owner = "phaazon";
  #    repo = "hop.nvim";
  #    rev = "9c849dac4b8efe6ad30aabec995dabfb5b251046";
  #    sha256 = "0z0ddrqhpirjdck9j0dmaxx0ra5hlcll0iawqb0078xg181bhnwh";
  #  };
  #};
  #presence = pkgs.vimUtils.buildVimPlugin {
  #  name = "presence";
  #  src = pkgs.fetchFromGitHub {
  #    owner = "andweeb";
  #    repo = "presence.vim";
  #    rev = "77227a06ecf84037277318758a8026524aa736ab";
  #    sha256 = "0x13p4pyby6g425cwm9b42qxknh1k27knf8hhn7jfgb4c5bdzk5a";
  #  };
  #};

  neorg = pkgs.vimUtils.buildVimPlugin {
    name = "neorg";
    src = pkgs.fetchFromGitHub {
      owner = "vhyrro";
      repo = "neorg";
      rev = "156bfdab640c6f57a6933e5e4fa60f9648f19857";
      sha256 = "0x3rryszciai5012c6kv7dyb8jlyn3w04j22k9x7n9nids42xhqx";
    };
  };
  # vim-css-color  = pkgs.vimUtils.buildVimPlugin {
  #   name = "vim-css-color";
  #   src = pkgs.fetchFromGitHub {
  #     owner = "ap";
  #     repo = "vim-css-color";
  #     rev = "7337c35588e9027b516f80f03c3b9621a271e168";
  #     sha256 = "05np2fr8q8r8n5mlspjywibl7hx54liy77wxvjya7n2p085n49ks";
  #   };
  # };
  bracey  = pkgs.vimUtils.buildVimPlugin {
    name = "bracey.vim";
    src = pkgs.fetchFromGitHub {
      owner = "turbio";
      repo = "bracey.vim";
      rev = "457933c107db65ff7e2695e07209a9a2934544b7";
      sha256 = "1x8c8l9x4i9n2rlh3a8zha0ni85v04p32w7yciwxp7ddlwzf3lwh";
    };
  };

}
