{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "adam";
  home.homeDirectory = "/home/adam";

  nixpkgs.config = {
    allowUnfree = true;
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    microsoft-edge
    mpv
    nix-direnv
    direnv
    vimPlugins.telescope-file-browser-nvim
    chromium
    okular
    spectacle
    steam
    gcc_multi
    cargo
    nodejs
    kate
    fzf
    fd
    lazygit
    obs-studio
    obs-studio-plugins.obs-vkcapture
    obs-studio-plugins.obs-gstreamer
    obs-studio-plugins.obs-pipewire-audio-capture
  ];

  programs.vscode = {
    enable = true;
    package = pkgs.vscode.fhs;
    };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
    viAlias = true;
  };

  programs.gh = {
    enable = true;
    enableGitCredentialHelper = true;
    settings.git_protocol = "ssh";
  };

  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull;
    lfs.enable = true;
  };









}
