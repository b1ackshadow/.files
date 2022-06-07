#  Main system configuration. More information available in configuration.nix(5) man page.
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ configuration.nix *
#   └─ ./modules
#       └─ ./editors
#           └─ ./neovim
#               └─ default.nix
#


{ config, lib, pkgs, inputs, user,  ... }:

{
  imports =
    [
      ./packages.nix
    ];

   # Initial run
   #users.mutableUsers = false;
   #users.users.root.initialHashedPassword = "";

   # Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.${user} = {
     isNormalUser = true;
     #initialHashedPassword = "nixos";
     extraGroups  = [ "wheel"  "networkmanager" "video" "audio" "input" "docker" "jackaudio" ]; # Enable ‘sudo’ for the user.
     shell = pkgs.zsh;
   };

   # Set your time zone.
   time.timeZone = "Asia/Kolkata";
   # Select internationalisation properties.
   i18n.defaultLocale = "en_US.UTF-8";
   console = {
     font = "Lat2-Terminus16";
     useXkbConfig = true; # use xkbOptions in tty.
   };


   fonts.fonts = with pkgs; [                # Fonts
    carlito                                 # NixOS
    vegur                                   # NixOS
    source-code-pro
    font-awesome                            # Icons
    corefonts                               # MS
    (nerdfonts.override {                   # Nerdfont Icons override
      fonts = [
        "FiraCode"
        "SourceCodePro"
      ];
    })
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
    #(_: _: { nixgl = inputs.nixgl.defaultPackage.x86_64-linux; })
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



networking.hostName = "nixos"; # Define your hostname.
# Pick only one of the below networking options.
# networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.


# Configure network proxy if necessary
# networking.proxy.default = "http://user:password@proxy:port/";
# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";


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

