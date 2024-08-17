{ pkgs, ... }:
{
  plugins.treesitter.enable = true;
  plugins.treesitter-textobjects = {
    enable = true;
    move = {
      enable = true;
      gotoNextStart."<leader>fj" = "@function.outer";
      gotoPreviousStart."<leader>fk" = "@function.outer";
    };

    lspInterop = {
      enable = true;
      border = "rounded";
      peekDefinitionCode."<leader>fp" = "@function.outer";
    };
  };

  extraConfigLua = ''
    function fileTooLarge(lang, buf)
        local max_filesize = 500 * 1024 -- 500 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))

        if ok and stats and stats.size > max_filesize then
            return true
        end

        return false
    end

    require('nvim-treesitter.configs').setup({
      highlight = {
        enable = true,
        disable = fileTooLarge,
      },
      textsubjects = {
        enable = true,
        prev_selection = '<S-cr>', -- (Optional) keymap to select the previous selection
          keymaps = {
            ['<cr>'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
            ['i;'] = 'textsubjects-container-inner',
          },
        },
    })
  '';

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "nvim-treesitter-textsubjects";
      src = pkgs.fetchFromGitHub {
        owner = "RRethy";
        repo = "nvim-treesitter-textsubjects";
        rev = "a8d2844bba925d9450ef7ab215f3b054028288ca";
        hash = "sha256-fcrNMuqCdt2y5yPbi/Kpx2D/MQ1gBR1E3F/lz+tyfRg=";
      };
    })
  ];
}
