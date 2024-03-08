local M = {
  'huggingface/hfcc.nvim',

  opts = {
    -- cf Setup
    model = "bigcode/starcoderplus",
    fim = {
      enabled = true,
      prefix = "<fim_prefix>",
      middle = "<fim_middle>",
      suffix = "<fim_suffix>",
    },
    accept_keymap = "<F3>",
    dismiss_keymap = "<F4>",
  },
  init = function()
    local wk = require("which-key")
    local default_options = { silent = true }
    wk.register({
      c = {
        name = "Coding",
        m = { "<cmd>HFccSuggestion<cr>", "Ask model" },
      }
    }, { prefix = "<leader>", mode = "n", default_options})
  end
}

return M
