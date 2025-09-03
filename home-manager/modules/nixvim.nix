{
  programs.nixvim = {
    enable = false;

    plugins.lualine.enable = true;

    lsp.servers.pyright.enable = true;
  };
}