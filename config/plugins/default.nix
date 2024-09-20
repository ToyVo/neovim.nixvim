{
  imports = [
    ./cmp.nix
    ./conform.nix
    ./gitsigns.nix
    ./lazy.nix
    ./lsp.nix
    ./mini.nix
    ./telescope.nix
    ./treesitter.nix
    ./whichkey.nix
  ];

  plugins = {
    # Detect tabstop and shiftwidth automatically
    sleuth.enable = true;
    # Highlight todo, notes, etc in comments
    todo-comments.enable = true;
  };

}
