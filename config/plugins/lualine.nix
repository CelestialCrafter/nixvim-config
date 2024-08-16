{
  plugins.lualine = {
    enable = true;
    globalstatus = true;

    componentSeparators = {
      left = "";
      right = "";
    };

    sectionSeparators = {
      left = "";
      right = "";
    };

    sections = {
      lualine_a = [ "mode" ];
      lualine_c = [
        {
          name = "encoding";
          padding = {
            left = 1;
            right = 0;
          };
        }
        {
          name = "filename";
          extraConfig.file_status = false;
        }
        {
          name = "diagnostics";
          extraConfig = {
            symbols = {
              error = "┛  ";
              warn = "┛  ";
              info = "┨  ";
              hint = "┨  ";
            };
            update_in_insert = true;
          };
        }
      ];
      lualine_x = [
        "fileformat"
        # Formatter
        {
          name.__raw = ''
            function()
              local formatters = require("conform").list_formatters(0)

              if #formatters == 0 then
                return "none"
              end

              for _, formatter in ipairs(formatters) do
            	return formatter.name
              end
            end
          '';
        }
        {
          name = "location";
          padding = {
            left = 0;
            right = 0;
          };
        }
      ];
      lualine_b = [ "" ];
      lualine_y = [ "" ];
      lualine_z = [ "" ];
    };
  };
  extraConfigLua = ''
    vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
    vim.api.nvim_create_autocmd("User", {
      group = "lualine_augroup",
      pattern = {"LspProgressStatusUpdated", "BufEnter"},
      callback = require("lualine").refresh
    })

    vim.api.nvim_create_autocmd({ "RecordingEnter" }, {
      group = "lualine_augroup",
      callback = function()
        require("lualine").hide()
        local macro = vim.fn.reg_recording()
        vim.opt.statusline = string.format("%%1*recording @%s", macro)
      end
    })

    vim.api.nvim_create_autocmd({ "RecordingLeave" }, {
      group = "lualine_augroup",
      callback = function()
        require("lualine").hide({ unhide = true })
      end
    })
  '';
}
