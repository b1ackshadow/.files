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
    		


  ] ++ [
        #nixgl.packages.x86_64-linux.nixVulkanNvidia
        ];
}


