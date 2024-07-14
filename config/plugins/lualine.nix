{ pkgs, ... }:

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
        # LSP
        {
          name.__raw = ''
                    function()
            	      local clients = vim.lsp.get_clients()
                      local output = ""

            	      if next(clients) == nil then
            		return "none"
            	      end

                      local clientNames = {};
                      for _, client in ipairs(clients) do
                        table.insert(clientNames, client.name)
            	      end

                      return table.concat(clientNames, " ")
            	    end
          '';
          padding = {
            left = 1;
            right = 0;
          };
        }
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
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "lsp-progress";
      src = pkgs.fetchFromGitHub {
        owner = "linrongbin16";
        repo = "lsp-progress.nvim";
        rev = "55a04895ea20c365b670051a3128265d43bdfa3d";
        hash = "sha256-lemswtWOf6O96YkUnIFZIsuZPO4oUTNpZRItsl/GSnU=";
      };
    })
  ];
  extraConfigLua = ''
    vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
    vim.api.nvim_create_autocmd("User", {
      group = "lualine_augroup",
      pattern = {"LspProgressStatusUpdated", "BufEnter"},
      callback = require("lualine").refresh,
    })
  '';
}
