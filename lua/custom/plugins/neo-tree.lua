return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>fp", "<cmd>Neotree reveal toggle<cr>", desc = "Toggle Filetree" },
    { "<leader>ft", "<cmd>Neotree<cr>", desc = "Focus Filetree" },
  },
  opts = {
    filesystem = {
      use_libuv_file_watcher = true,
    }
  }
}
