{
  autoCmd = [
    #  See `:help lua-guide-autocommands`
    #
    # Highlight when yanking (copying) text
    # Try it with `yap` in normal mode
    # See `:help vim.highlight.on_yank()`
    {
      desc = "Highlight when yanking (copying) text";
      event = [ "TextYankPost" ];
      group = "kickstart-highlight-yank";
      callback.__raw = ''
        function()
          vim.highlight.on_yank()
        end
      '';
    }
  ];
  autoGroups = {
    kickstart-highlight-yank = {
      clear = true;
    };
  };
}
