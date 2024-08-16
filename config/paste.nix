{
  extraConfigLua = ''
    vim.paste = (function(overridden)
      return function(lines, phase)
        print(type(lines[0]))
      end
    end)(vim.paste)
  '';
}
