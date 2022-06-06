# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

			{ config, pkgs,lib, inputs, nixgl,  ... }:
let 

  user = "blackshadow";
  home-manager = builtins.fetchGit {
    url = "https://github.com/nix-community/home-manager.git";
    rev = "82d6ba7003fcf51e9a5b71ab1923e18d5c00fd6f";
    ref = "master";
  };
in {
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./packages.nix
  ];

  nixpkgs.config = {
    allowUnfree = true;
    packageOverrides = pkgs: {
      vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; }; 
    };
  };
  nixpkgs.config.allowUnfreePredicate = (pkg: true);
  nixpkgs.overlays = [
    (import ./overlays.nix)
    (_: _: { nixgl = inputs.nixgl.defaultPackage.x86_64-linux; })
  ];

  nix.extraOptions = ''experimental-features = nix-command flakes'';
  nix.autoOptimiseStore = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
  nix = {
    package = pkgs.nixFlakes;
  };

# Use the systemd-boot EFI boot loader.
boot.loader.systemd-boot.enable = true;
boot.loader.efi.canTouchEfiVariables = true;
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
# Pick only one of the below networking options.
# networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

# Set your time zone.
# time.timeZone = "Asia/Kolkata";

# Configure network proxy if necessary
# networking.proxy.default = "http://user:password@proxy:port/";
# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

# Select internationalisation properties.
i18n.defaultLocale = "en_US.UTF-8";
console = {
  font = "Lat2-Terminus16";
  useXkbConfig = true; # use xkbOptions in tty.
};

# Enable the X11 windowing system.
services.xserver = {
  enable = true;
  videoDrivers = ["nouveau"];
  displayManager = {
    lightdm.enable = true;
#	defaultSession = "gnome";
};
};



# Configure keymap in X11
services.xserver.layout = "us";

# Enable CUPS to print documents.
services.printing.enable = true;

# Enable sound.
sound.enable = true;
hardware.pulseaudio.enable = true;
hardware.pulseaudio.support32Bit = true;
hardware.pulseaudio.package = pkgs.pulseaudioFull;

# Enable touchpad support (enabled default in most desktopManager).
services.xserver.libinput.enable = true;

# Define a user account. Don't forget to set a password with ‘passwd’.
users.users.${user} = {
  isNormalUser = true;
  extraGroups  = [ "wheel"  "networkmanager" "video" "audio" "input" "docker" "jackaudio" ]; # Enable ‘sudo’ for the user.
  packages = with pkgs; [
    firefox
    thunderbird
    alacritty 
  ];
};

# List packages installed in system profile. To search, run:
# $ nix search wget
#environment.systemPackages = with pkgs; [
#  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
#  wget
#  networkmanagerapplet
#  alacritty
#  firefox
#  git
#];

# Some programs need SUID wrappers, can be configured further or are
# started in user sessions.
programs.mtr.enable = true;
programs.gnupg.agent = {
  enable = true;
  enableSSHSupport = true;
};

# List services that you want to enable:

# Enable the OpenSSH daemon.
services.openssh.enable = true;

# rgb mouse	
services.ratbagd.enable = true;

# compositor
services.picom= {
      enable = true;
      experimentalBackends = true;


    };	



# Open ports in the firewall.
# networking.firewall.allowedTCPPorts = [ ... ];
# networking.firewall.allowedUDPPorts = [ ... ];
# Or disable the firewall altogether.
# networking.firewall.enable = false;

# Copy the NixOS configuration file and link it from the resulting system
# (/run/current-system/configuration.nix). This is useful in case you
# accidentally delete configuration.nix.
system.copySystemConfiguration = false;

# This value determines the NixOS release from which the default
# settings for stateful data, like file locations and database versions
# on your system were taken. It‘s perfectly fine and recommended to leave
# this value at the release version of the first install of this system.
# Before changing this value read the documentation for this option
# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
system.stateVersion = "22.05"; # Did you read the comment?



}

