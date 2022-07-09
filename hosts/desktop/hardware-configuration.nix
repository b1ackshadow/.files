# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "ahci" "ohci_pci" "ehci_pci" "xhci_pci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    #{ device = "/dev/disk/by-uuid/95931ed3-f706-4c75-a38f-267dd4bdda2b";
    { device = "/dev/disk/by-label/nixos";
      fsType = "ext4";
    };

  fileSystems."/home" =
    #{ device = "/dev/disk/by-uuid/b675addf-aa6d-4c23-a607-d120a8de771a";
    #{ device = "/dev/disk/by-label/home";
    { device = "/dev/disk/by-label/home";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    #{ device = "/dev/disk/by-uuid/2BD0-8C1F";
    { device = "/dev/disk/by-label/boot";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/14a304ef-7b0d-49c1-b754-868cccc2a422"; }
    #[ { device = "/dev/disk/by-label/swap"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp5s0.useDHCP = lib.mkDefault true;

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
