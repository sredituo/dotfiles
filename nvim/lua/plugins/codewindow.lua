return {
  "gorbit99/codewindow.nvim",
  config = function()
    local codewindow = require("codewindow")
    codewindow.setup()
    -- <leader>mmでミニマップToggle
    codewindow.apply_default_keybinds()
  end
}
