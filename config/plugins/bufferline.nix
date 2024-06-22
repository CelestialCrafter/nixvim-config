{
  plugins.bufferline = {
    enable = true;
    alwaysShowBufferline = false;
    bufferCloseIcon = "󰅖";
    closeIcon = "󰅖";
    modifiedIcon = "◎ ";
    leftTruncMarker = "＜";
    rightTruncMarker = "＞";

    nameFormatter = ''
      function(buf)
        return string.format(" %s", buf.name)
      end
    '';
  };
}
