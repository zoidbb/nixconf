{ config, pkgs, ... }:
{
  users.users.berz = {
    isNormalUser = true;
    description = "Ber Zoidberg";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      firefox
      discord
      spotify
      vscode
      zsh
      nixpkgs-fmt
      easyeffects
      (vscode-with-extensions.override {
        vscodeExtensions = with vscode-extensions; [
          bbenoist.nix
          ms-python.python
          jnoortheen.nix-ide
        ];
      })
    ];
  };
  programs.steam.enable = true;
}
