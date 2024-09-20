{ pkgs, ... }:
{
  # See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
  plugins.lazy = {
    enable = true;
    plugins = [
      {
        pkg = pkgs.vimPlugins.luvit-meta;
        lazy = true;
      }
      {
        # `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
        # used for completion, annotations and signatures of Neovim apis
        pkg = pkgs.vimPlugins.lazydev-nvim;
        ft = "lua";
        opts = {
          library = [
            # Load luvit types when the `vim.uv` word is found
            {
              path = "luvit-meta/library";
              words = [ "vim%.uv" ];
            }
          ];
        };
      }
    ];
  };
}
