{
  globals.mapleader = " ";
  keymaps = [
    # clear search
    {
      mode = [
        "n"
        "x"
      ];
      key = "<Esc>";
      action = "<cmd>nohlsearch<cr><Esc>";
    }

    # disable :qa to exit vim
    {
      mode = [
        "n"
        "x"
      ];
      key = "<C-c>";
      action = "";
    }

    # code actions
    {
      mode = [ "n" ];
      key = "<leader><cr>";
      action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
    }

    # system clipboard
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>y";
      action = "\"+y";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>Y";
      action = "\"+y$";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>p";
      action = "\"+p";
    }

    # void register
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>d";
      action = "\"_d";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>D";
      action = "\"_D";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>x";
      action = "\"_x";
    }

    # quickfix
    {
      mode = [
        "n"
        "x"
      ];
      key = "<C-j>";
      action = "<cmd>cnext<cr>";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<C-k>";
      action = "<cmd>cprev<cr>";
    }

    # undotree
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>u";
      action = "<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>";
    }

    # comments
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>c";
      action = "gc$";
    }

    # oil
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>-";
      action.__raw = ''
        function()
          local oil = require('oil')
          if oil.get_current_dir(0) ~= nil then
            return oil.close()
          end 

          oil.open()
        end
      '';
    }

    # lsp hover toggle
    {
      mode = [
        "n"
        "x"
      ];
      key = "K";
      action.__raw = ''
        function()
          local base_win_id = vim.api.nvim_get_current_win()
          local windows = vim.api.nvim_tabpage_list_wins(0)
          for _, win_id in ipairs(windows) do
            if win_id ~= base_win_id then
              local win_cfg = vim.api.nvim_win_get_config(win_id)
              if win_cfg.relative == "win" and win_cfg.win == base_win_id then
                vim.api.nvim_win_close(win_id, {})
                return
              end
            end
          end

          vim.lsp.buf.hover()
        end
      '';
    }
  ];

  # overwrite
  extraConfigLua = ''
    local set_opfunc = vim.fn[vim.api.nvim_exec([[
      func s:set_opfunc(val)
        let &opfunc = a:val
      endfunc
      echon get(function('s:set_opfunc'), 'name')
    ]], true)]

    local function change_put(motion)
      if motion == nil then
        set_opfunc(change_put)
        return "g@"
      end

      local enter = vim.api.nvim_replace_termcodes("<CR>", true, true, true)
      vim.api.nvim_feedkeys("<cmd>silent exe 'normal! `[v`]\"_c' . @" .. enter, "n", false)
    end

    vim.keymap.set("n", "cp", change_put, { expr = true })
  '';
}
