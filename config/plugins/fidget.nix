{
  plugins.fidget = {
    enable = true;
    notification = {
      configs.default = ''
        (function()
          local default = require('fidget.notification').default_config;
          default.icon = ""
          default.name = "notifications"

          return default
        end)()
      '';
      overrideVimNotify = true;
      view.groupSeparator = "";
      window.winblend = 0;
      window.border = [
        " "
        " "
        " "
        " "
        ""
        ""
        ""
        " "
      ];
      window.xPadding = 0;
    };
    progress = {
      display.formatMessage = ''
        function(msg)
          local function truncate(str)
            new = str:sub(1, 20)

            if new == str then
              return str
            end

            return new .. '...'
          end

          local message = msg.message

          if not message then
            return msg.done and "Completed" or "In progress..."
          end

          if msg.percentage ~= nil then
            return string.format("%s (%.0f%%)", truncate(message), msg.percentage)
          end

          return truncate(message)
        end
      '';
    };
  };
}
