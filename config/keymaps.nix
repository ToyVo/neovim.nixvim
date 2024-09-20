{
  keymaps = [
    #  See `:help vim.keymap.set()`

    # Clear highlights on search when pressing <Esc> in normal mode
    # See `:help hlsearch`
    {
      action = "<cmd>nohnsearch<CR>";
      key = "<Esc>";
      mode = "n";
    }

    # Diagnostic keymaps
    {
      action.__raw = "vim.diagnostic.setloclist";
      key = "<leader>q";
      mode = "n";
      options.desc = "Open diagnostic [Q]uickfix list";
    }

    # Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
    # for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
    # is not what someone will guess without a bit more experience.
    # NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
    # or just use <C-\><C-n> to exit terminal mode
    {
      action = "<C-\\><C-n>";
      key = "<Esc><Esc>";
      mode = "t";
      options.desc = "Exit terminal mode";
    }

    # TIP: Disable arrow keys in normal mode
    # {
    #   action = "<cmd>echo 'Use h to move!!'<CR>";
    #   key = "<left>";
    #   mode = "n";
    # }
    # {
    #   action = "<cmd>echo 'Use l to move!!'<CR>";
    #   key = "<right>";
    #   mode = "n";
    # }
    # {
    #   action = "<cmd>echo 'Use k to move!!'<CR>";
    #   key = "<up>";
    #   mode = "n";
    # }
    # {
    #   action = "<cmd>echo 'Use j to move!!'<CR>";
    #   key = "<down>";
    #   mode = "n";
    # }

    # Keybinds to make split navigation easier.
    # Use CTRL+<hjkl> to switch between windows
    # See `:help wincmd` for a list of all window commands
    {
      action = "<C-w><C-h>";
      key = "<C-h>";
      mode = "n";
      options.desc = "Move focus to the left window";
    }
    {
      action = "<C-w><C-l>";
      key = "<C-l>";
      mode = "n";
      options.desc = "Move focus to the right window";
    }
    {
      action = "<C-w><C-j>";
      key = "<C-j>";
      mode = "n";
      options.desc = "Move focus to the lower window";
    }
    {
      action = "<C-w><C-k>";
      key = "<C-k>";
      mode = "n";
      options.desc = "Move focus to the upper window";
    }
  ];
}
