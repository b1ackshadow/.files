#
#                                                                               
#                                                                             (((((((         /#%%%%%#    %%%%%%%#                                                               
#                                                                              (((((((          %%#%%%%  %%%%%%%                                                                 
#                                                                               ,(((((((         ###%%%%%%%%%%%                                                                  
#                                                                        ((((((((((((((((((((((((( #%%%%%%%%%                                                                    
#                                                                      ,(((((((((((((((((((((((((((.##%%%%%%         /(/                                                         
#                                                                     ((((((((((((((((((((((((((((((( %%%%%%#       (((((                                                        
#                                                                                #%%%%%#               #%%%%%#.   *(((((((                                                       
#                                                                              (#%%%%%#                 .%%%%%%# (((((((                                                         
#                                                                             %%%%%%%                     #%%%% (((((((                                                          
#                                                               ###########%%%%%%%%%                       (% (((((((((((((((((                                                  
#                                                              #%%%%%%%%%%%%%%%%##                           (((((((((((((((((((                                                 
#                                                               (%%%%%%%%%%%%%%%# ((                       /((((((((((((((((((/                                                  
#                                                                       %#%%%%%(/((((,                    (((((((                                                                
#                                                                      #%%%%%% .(((((((                 /(((((((                                                                 
#                                                                    %%#%#%%#    ((((((/               (((((((                                                                   
#                                                                     ##%%%       /((((((( ##%#%%%%%%%%%%%%%%%%%%%%%%%%##                                                        
#                                                                       %#         (((((((( %%%%%%%%%%%%%%%%%%%%%%%%%%#(                                                         
#                                                                                 ((((((((((/*#########%%%%%%%(###(###                                                           
#                                                                               /(((((((((((((         .%%%%%%%                                                                  
#                                                                              (((((((  /((((((/         %%%%%%%.                                                                
#                                                                            *(((((((     (((((((         /%%%%%%%                                                               
#                                                                              ((((        (((((((,         %%%%                                                                 
#                
#
#
#                                                                                      Pure by design
#
#  flake.nix *             
#   ├─ ./hosts
#   │   └─ default.nix
#   └─ ./nix
#       └─ default.nix
#


{
  description = "My System.nix";

  inputs = {

    flake-utils.url = "github:numtide/flake-utils";
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = { 
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nurpkgs = {
      url = "github:nix-community/NUR";                                   # NUR packages
    };

    nixgl = {                                                             #OpenGL 
    url = "github:guibou/nixGL";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
};

  outputs = inputs @ { self, nixpkgs, home-manager, nixgl, nur, ... } : 
    let
      system = "x86_64-linux";
      user = "blackshadow";
    in 
      {
        nixosConfigurations = (                                               # NixOS configurations
          import ./hosts {                                                    # Imports ./hosts/default.nix
            inherit (nixpkgs) lib;
            inherit inputs nixpkgs home-manager nur user system nixgl;            # Also inherit home-manager so it does not need to be defined here.
          }
        );
      #  homeConfigurations = (                                                # Non-NixOS configurations
      #  import ./nix {
      #    inherit (nixpkgs) lib;
      #    inherit inputs nixpkgs home-manager nixgl user;
      #  }
      #);

      };
}
