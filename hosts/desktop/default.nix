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
  boot.loader = {
    systemd-boot = {
      enable = true;
      configurationLimit = 5;
    };
    efi.canTouchEfiVariables = true;
  };
  boot.plymouth.enable =  true;
  
  hardware.enableAllFirmware = true;
  hardware.nvidia.modesetting.enable = true;
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.legacy_390;
  
  hardware.opengl = {
    enable = true;
    setLdLibraryPath = true;
    driSupport32Bit = true;
    driSupport = true;
    extraPackages = with pkgs; [
      mesa.drivers libGL vaapiIntel linuxPackages.nvidia_x11_legacy390.out vaapiVdpau libvdpau-va-gl 
    ];
  };
  

  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.





}
