{
  globals.mapleader = " ";
  
  keymaps = [
    # clear search
    {
      mode = ["n" "x"];
      key = "<esc>";
      action = "<cmd>nohlsearch<cr>";
    }

    # system clipboard
    {
      mode = ["n" "x"];
      key = "<leader>y";
      action = "\"+y";
    }
    {
      mode = ["n" "x"];
      key = "<leader>p";
      action = "\"+p";
    }

    # void register
    {
      mode = ["n" "x"];
      key = "<leader>d";
      action = "\"_d";
    }

    # comment
    {
      mode = ["n" "x"];
      key = "<leader>c";
      action = "gcc";
    }
  ];
}
