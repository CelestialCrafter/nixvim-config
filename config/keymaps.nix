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

    # undotree
    {
      mode = ["n" "x"];
      key = "<leader>u";
      action = "<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>";
    }

    # quickfix
    {
      mode = ["n" "x"];
      key = "<C-l>";
      action = "<cmd>cnext<cr>";
    }
    {
      mode = ["n" "x"];
      key = "<C-h>";
      action = "<cmd>cprev<cr>";
    }
  ];
}
