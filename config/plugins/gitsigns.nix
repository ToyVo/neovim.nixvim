{
  # See `:help gitsigns` to understand what the configuration keys do
  # Adds git related signs to the gutter, as well as utilities for managing changes
  plugins.gitsigns = {
    enable = true;
    settings = {
      signs = {
        add = {
          text = "+";
        };
        change = {
          text = "~";
        };
        changedelete = {
          text = "~";
        };
        delete = {
          text = "_";
        };
        topdelete = {
          text = "‾";
        };
      };
    };
  };
}
