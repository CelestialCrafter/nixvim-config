{
  imports = [
    ./lsp.nix
    ./cmp.nix
    ./telescope.nix
    ./flash.nix
    ./lualine.nix
    ./illuminate.nix
    ./luasnip.nix
    ./bufferline.nix
    ./todo.nix
    ./conform.nix
    ./lint.nix
    ./dressing.nix
    ./lightbulb.nix
    ./oil.nix
    ./cinnamon.nix
    ./treesitter.nix
    ./textobjects.nix
    ./fidget.nix
    ./relative-sign.nix
    ./yank-highlight.nix
  ];

  plugins = {
    bufferline.enable = true;
    wakatime.enable = true;
    undotree.enable = true;
    nvim-autopairs.enable = true;
    ts-autotag.enable = true;
    sleuth.enable = true;
    fugitive.enable = true;
  };
}
