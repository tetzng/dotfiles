return {
  {
    'vim-jp/vimdoc-ja',
    event = "VimEnter",
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    config = function()
      require("pluginconfig/tokyonight")
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VimEnter",
    config = function()
      require("pluginconfig/which-key")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    highlight = {
      enable = true,
    },
  },
  {
    "folke/noice.nvim",
    event = "VimEnter",
    config = function()
      require("pluginconfig/noice")
    end,
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    'neovim/nvim-lspconfig',
    event = "VimEnter",
  },
  {
    'williamboman/mason.nvim',
    event = "VimEnter",
  },
  {
    'williamboman/mason-lspconfig',
    event = "VimEnter",
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    event = "VimEnter",
  },
  {
    'jayp0521/mason-null-ls.nvim',
    event = "VimEnter",
  },
  {
    'stevearc/dressing.nvim',
    event = "VimEnter",
  },
  {
    'tami5/lspsaga.nvim',
    event = "VimEnter",
  },
  {
    'ray-x/lsp_signature.nvim',
    event = "VimEnter",
  },
  {
    'onsails/lspkind-nvim',
    event = "VimEnter",
  },
  {
    'j-hui/fidget.nvim',
    event = "VimEnter",
  },
  {
    'hrsh7th/nvim-cmp',
    event = "VimEnter",
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    event = "VimEnter",
  },
  {
    'hrsh7th/cmp-buffer',
    event = "VimEnter",
  },
  {
    'hrsh7th/cmp-path',
    event = "VimEnter",
  },
  {
    'hrsh7th/vim-vsnip',
    event = "VimEnter",
  },
  {
    'lambdalisue/fern.vim',
    event = "VimEnter",
  },
  {
    'nvim-lua/plenary.nvim',
    event = "VimEnter",
  },
  {
    'nvim-lua/telescope.nvim',
    tag = '0.1.1',
    event = "VimEnter",
    dependencies = {
      'nvim-lua/plenary.nvim',
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    event = "VimEnter",
  },
  {
    'sainnhe/gruvbox-material',
    event = "VimEnter",
  },
  {
    "hrsh7th/nvim-cmp",
    event = "VimEnter",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-nvim-lua" },
    },
    config = function()
    end,
  },
  -- Better `vim.notify()`
  {
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>un",
        function()
          require("notify").dismiss({ silent = true, pending = true })
        end,
        desc = "Delete all Notifications",
      },
    },
    opts = {
      timeout = 3000,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
    },
  },

  -- better vim.ui
  {
    "stevearc/dressing.nvim",
    lazy = true,
    init = function()
      ---@diagnostic disable-next-line: duplicate-set-field
      vim.ui.select = function(...)
        require("lazy").load({ plugins = { "dressing.nvim" } })
        return vim.ui.select(...)
      end
      ---@diagnostic disable-next-line: duplicate-set-field
      vim.ui.input = function(...)
        require("lazy").load({ plugins = { "dressing.nvim" } })
        return vim.ui.input(...)
      end
    end,
  },

  -- bufferline
  {
    "akinsho/nvim-bufferline.lua",
    event = "VeryLazy",
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    },
  },

  -- statusline
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
    event = "VeryLazy",
    config = function()
      require("pluginconfig/lualine")
    end,
  },

  -- indent guides for Neovim
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPost",
    opts = {
      -- char = "▏",
      char = "│",
      filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
      show_trailing_blankline_indent = false,
      show_current_context = false,
    },
  },

  -- active indent guide and indent text objects
  {
    "echasnovski/mini.indentscope",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = "BufReadPre",
    opts = {
      -- symbol = "▏",
      symbol = "│",
      options = { try_as_border = true },
    },
    config = function(_, opts)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
      require("mini.indentscope").setup(opts)
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VimEnter",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        -- tag = "v1.*",
        config = function()
          require 'window-picker'.setup({
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify" },

                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal', "quickfix" },
              },
            },
            other_win_hl_color = '#e35e4f',
          })
        end,
      },
    },
    config = function()
      require("pluginconfig/neo-tree")
    end,
  },

  {
		"delphinus/cellwidths.nvim",
		event = "BufEnter",
		config = function()
			require("cellwidths").setup({
				name = "cica",
			})
		end,
	},
}
