return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "rcarriga/nvim-notify",
  --   },
  --   config = function()
  --     require("noice").setup({
  --       -- Your custom Noice configuration here
  --     })
  --   end,
  -- },
  --
  {
    "stevearc/dressing.nvim",
    config = function()
      require('dressing').setup({
        -- Add your custom configuration here
        input = {
          insert_only = false,
          start_in_insert = true,
        },
        select = {
          backend = { "telescope", "builtin" },
          builtin = {
            winblend = 10,
            width = 80,
            prompt = "Choose:",
          },
        },
      })
    end,
  },
  
  -- Other plugins
  -- { 'MunifTanjim/prettier.nvim', config = function()
  --     require('prettier').setup({
  --       bin = 'prettier', -- or 'prettierd' for the faster daemon
  --       filetypes = {
  --         "javascript", "typescript", "css", "json", "html", "markdown"
  --       }
  --     })
  --   end,
  -- },
  --

    
    -- Harpoon plugin with icons and Telescope integration
    {
        "ThePrimeagen/harpoon",
        requires = { "nvim-telescope/telescope.nvim", "nvim-tree/nvim-web-devicons"         },
        config = function()
            require("harpoon").setup({
                menu = {
                    width = vim.api.nvim_win_get_width(0) - 20,  -- Adjust menu width
                    height = vim.api.nvim_win_get_height(0) - 10, -- Adjust menu height
                    icons = {
                        mark = "",  -- Star icon for marked files
                        close = "", -- Cross icon for removing files
                    },
                }
            })

            -- Load Telescope extension for Harpoon
            require("telescope").load_extension("harpoon")
        end
    },
    
    -- Telescope for fuzzy finding
    {
        "nvim-telescope/telescope.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    },

    -- nvim-web-devicons for file icons
    {
        "nvim-tree/nvim-web-devicons", 
        lazy = true  -- Only load when needed
    },


  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
