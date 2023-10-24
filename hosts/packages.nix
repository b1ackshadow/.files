{ pkgs,  nixgl,  ...}:

{
  environment.variables = {
    TERMINAL = "alacritty";
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
  environment.systemPackages = with pkgs; [
    acpi 	
    pciutils
    wget
    piper # mouse rgb
    git
    openbox
    ripgrep
    polybar
    neovim
    scrot
    obsidian
    rustup
    nodejs
    pkg-config

    		


  ] ++ [
        #nixgl.packages.x86_64-linux.nixVulkanNvidia
        ]
        ++
  [
    # support both 32- and 64-bit applications
    wineWowPackages.stable

    # # support 32-bit only
    # wine
    #
    # # support 64-bit only
    # (wine.override { wineBuild = "wine64"; })

    # wine-staging (version with experimental features)
    # wineWowPackages.staging
    #wine-staging

    # winetricks (all versions)
    winetricks
    lutris
  ];
}


