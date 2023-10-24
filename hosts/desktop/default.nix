#
#  Specific system configuration settings for desktop
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ ./desktop
#   │        ├─ default.nix *
#   │        └─ hardware-configuration.nix
#   └─ ./modules
#       ├─ ./desktop
#       │   └─./awesome
#       │      └─ awesome.nix
#       ├─ ./services
#       │   └─ default.nix
#       └─ ./hardware
#           └─ default.nix
#


{ config, pkgs, lib, user, ... }:

{
  imports = [
    (import ./hardware-configuration.nix)
    (import ../../modules/desktop/awesome-nix/awesome.nix)
  ];

  # Use the systemd-boot EFI boot loader.
  #boot.loader = {

  #  systemd-boot = {
  #    enable = true;
  #    configurationLimit = 5;
  #  };
  #  efi.canTouchEfiVariables = true;
  #};
  boot = {
    loader.grub = rec {
      enable = true;
      efiSupport = true;
      efiInstallAsRemovable = true;
      devices = [ "nodev" ];
      useOSProber = true; 
      #gfxmodeBios = "1920x1080";
      #theme = pkgs.fetchFromGitHub {
      #  owner = "johdasgran";
      #  repo = "mr-robot-theme";
      #  rev = "6f40221ff51fcf7dd9f63391ad7ce4ac9ef53650";
      #  sha256 = "0f0iqm4hf2m4b9cl4jw9xnwq8w48xm33x9wjjlrbfj9dzpg9kyj8";
      #};
      #splashImage = theme + "/background.png";
      theme = pkgs.fetchFromGitHub {
        owner = "dracula";
        repo = "grub";
        rev = "ad5b6bd4b159fea4950918a5510864ebb551519d";
        sha256 = "12c76qs6p0fpbn4c3i0va5ibr711fgdhhh4ci86hmd5ss93p4b5y";
      } + "/dracula";
      splashImage = theme + "/background.png";
    };
    blacklistedKernelModules = [ "xpad" ];
  };
  boot.plymouth.enable =  true;
  
  hardware.enableAllFirmware = true;
  hardware.nvidia.modesetting.enable = false;
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
  
  hardware.opengl = {
    enable = true;
    setLdLibraryPath = true;
    driSupport32Bit = true;
    driSupport = true;
    extraPackages = with pkgs; [
      mesa.drivers libGL vaapiIntel linuxPackages.nvidia_x11.out vaapiVdpau libvdpau-va-gl 
    ];
  };

  services.actkbd = {
    enable = true;
    bindings = [
      { keys = [ 114 ]; events = [ "key" ]; command = "${pkgs.alsa-utils}/bin/amixer set 'Master' 10%-"; }
      { keys = [ 115 ]; events = [ "key" ]; command = "${pkgs.alsa-utils}/bin/amixer set 'Master' 10%+"; }
    ];
  };
  

  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.


  programs.steam = {
    enable = true;
  };


}
