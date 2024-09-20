# Telescope is a fuzzy finder that comes with a lot of different things that
# it can fuzzy find! It's more than just a "file finder", it can search
# many different aspects of Neovim, your workspace, LSP, and more!

# The easiest way to use Telescope, is to start by doing something like:
# :Telescope help_tags

# After running this command, a window will open up and you're able to
# type in the prompt window. You'll see a list of `help_tags` options and
# a corresponding preview of the help.

# Two important keymaps to use while in Telescope are:
# - Insert mode: <c-/>
# - Normal mode: ?

# This opens a window that shows you all of the keymaps for the current
# Telescope picker. This is really useful to discover what Telescope can
# do as well as how to actually do it!
{
  # Fuzzy Finder (files, lsp, etc)
  # See `:help telescope` and `:help telescope.setup()`
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      ui-select.enable = true;
    };
    settings = {
      # You can put your default mappings / updates / etc. in here
      # All the info you're looking for is in `:help telescope.setup()`
      defaults = {
        mappings = {
          i = {
            "<c-enter>".__raw = "require('telescope.actions').to_fuzzy_refine";
          };
        };
      };
    };
  };
  plugins.web-devicons.enable = true;
  keymaps = [
    # See `:help telescope.builtin`
    {
      action.__raw = "require('telescope.builtin').help_tags";
      key = "<leader>sh";
      mode = "n";
      options.desc = "[S]earch [H]elp";
    }
    {
      action.__raw = "require('telescope.builtin').keymaps";
      key = "<leader>sk";
      mode = "n";
      options.desc = "[S]earch [K]eymaps";
    }
    {
      action.__raw = "require('telescope.builtin').find_files";
      key = "<leader>sf";
      mode = "n";
      options.desc = "[S]earch [F]iles";
    }
    {
      action.__raw = "require('telescope.builtin').builtin";
      key = "<leader>ss";
      mode = "n";
      options.desc = "[S]earch [S]elect Telescope";
    }
    {
      action.__raw = "require('telescope.builtin').grep_string";
      key = "<leader>sw";
      mode = "n";
      options.desc = "[S]earch current [W]ord";
    }
    {
      action.__raw = "require('telescope.builtin').live_grep";
      key = "<leader>sg";
      mode = "n";
      options.desc = "[S]earch by [G]rep";
    }
    {
      action.__raw = "require('telescope.builtin').diagnostics";
      key = "<leader>sd";
      mode = "n";
      options.desc = "[S]earch [D]iagnostics";
    }
    {
      action.__raw = "require('telescope.builtin').resume";
      key = "<leader>sr";
      mode = "n";
      options.desc = "[S]earch [R]esume";
    }
    {
      action.__raw = "require('telescope.builtin').oldfiles";
      key = "<leader>s.";
      mode = "n";
      options.desc = "[S]earch Recent Files (\".\" for repeat)";
    }
    {
      action.__raw = "require('telescope.builtin').buffers";
      key = "<leader><leader>";
      mode = "n";
      options.desc = "[ ] Find existing buffers";
    }
    # Slightly advanced example of overriding default behavior and theme
    {
      # You can pass additional configuration to Telescope to change the theme, layout, etc.
      action.__raw = "function () require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false, }) end";
      key = "<leader>/";
      mode = "n";
      options.desc = "[/] Fuzzily search in current buffer";
    }
    # It's also possible to pass additional configuration options.
    # See `:help telescope.builtin.live_grep()` for information about particular keys
    {
      # You can pass additional configuration to Telescope to change the theme, layout, etc.
      action.__raw = "function () require('telescope.builtin').live_grep { grep_open_files = true, prompt_title = 'Live Grep in Open Files', } end";
      key = "<leader>s/";
      mode = "n";
      options.desc = "[S]earch [/] in Open Files";
    }
    # Shortcut for searching your Neovim configuration files
    {
      # You can pass additional configuration to Telescope to change the theme, layout, etc.
      action.__raw = "function () require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' } end";
      key = "<leader>sn";
      mode = "n";
      options.desc = "[S]earch [N]eovim files";
    }
  ];
}
