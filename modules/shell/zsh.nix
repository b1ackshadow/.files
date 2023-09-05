{
  programs = {
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      enableSyntaxHighlighting = true;
      dirHashes = {
        Code = "$HOME/Code";
        down = "$HOME/Downloads";
        nixc = "/etc/nixos";
        cfg = "$HOME/.config";
      };
      history.save = 100;

      oh-my-zsh = {
        enable = true;
        theme = "norm";
        plugins = [
          "git"
            "sudo"
            "tmux"
            "history"
            "golang"
            "fzf"
            "docker"
        ];
        shellAliases = {
          ll = "ls -l"
        };
        sessionVariables = {
          NIX_AUTO_RUN = 1;
        };
      };
      interactiveShellInit = ''
        export ZSH=${pkgs.oh-my-zsh}/share/oh-my-zsh/

# Customize your oh-my-zsh options here
        ZSH_THEME="agnoster"
        plugins=(git)

        '';

      promptInit = ""; # Clear this to avoid a conflict with oh-my-zsh
    };
  };
}
