{
  inputs = {
    devshell.url = "github:numtide/devshell";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs =
    inputs@{
      flake-parts,
      nixvim,
      self,
      ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = with inputs; [
        devshell.flakeModule
        flake-parts.flakeModules.easyOverlay
      ];
      flake = {
        nixvimModules.default = import ./config;
      };
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
      perSystem =
        {
          pkgs,
          config,
          system,
          ...
        }:
        {
          formatter = pkgs.nixfmt-rfc-style;
          devshells.default = {
            commands = [
              {
                package = config.packages.default;
		name = "nvim";
                help = "nixvim distribution";
              }
            ];
          };
          overlayAttrs = {
            inherit (config.packages) default;
          };
          packages = {
            default = nixvim.legacyPackages.${system}.makeNixvimWithModule {
              inherit pkgs;
              module = self.nixvimModules.default;
            };
          };
        };
    };
}
