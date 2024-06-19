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
        "encoding"
	"fileformat"
	{
	  name = "filetype";
	  extraConfig.icon_only = true;
	}
	# LSP
	{
	  name.__raw = ''
            function()
                local msg = ""
                local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                local clients = vim.lsp.get_active_clients()
                if next(clients) == nil then
                    return msg
                end
                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end
                return msg
            end
          '';
	  padding = {
	    left = 0;
	    right = 0;
	  };
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
}
