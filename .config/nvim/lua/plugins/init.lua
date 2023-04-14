return {
  {
    "vim-jp/vimdoc-ja",
    event = "VeryLazy",
    ft = "help",
  },
  {
    "folke/tokyonight.nvim",
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
    event = "VimEnter",
    build = ":TSUpdate",
    highlight = {
      enable = true,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = "VimEnter",
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "VimEnter",
  },
  {
    "folke/noice.nvim",
    event = "VimEnter",
    config = function()
      require("pluginconfig/noice")
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "neovim/nvim-lspconfig",
    event = "VimEnter",
  },
  {
    "williamboman/mason.nvim",
    event = { "BufReadPre", "BufNewFile" },
    build = ":MasonUpdate",
    config = function()
      require("pluginconfig/mason")
    end,
  },
  {
    "williamboman/mason-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("pluginconfig/mason-lspconfig")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("pluginconfig/null-ls")
    end,
  },
  {
    "jayp0521/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require("pluginconfig/mason-null-ls")
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "VimEnter",
    config = function()
      require("pluginconfig/lspsaga")
    end,
  },
  {
    "j-hui/fidget.nvim",
    event = "VimEnter",
    config = function()
      require("pluginconfig/fidget")
    end,
  },
  {
    "hrsh7th/vim-vsnip",
    event = "VimEnter",
  },
  {
    "nvim-lua/telescope.nvim",
    tag = "0.1.1",
    event = "VimEnter",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("pluginconfig/telescope")
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      { "f3fora/cmp-spell" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-calc", },
      { "hrsh7th/cmp-cmdline" },
      { "hrsh7th/cmp-emoji" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lsp-document-symbol" },
      -- { "hrsh7th/cmp-nvim-lsp-signature-help" },
      { "hrsh7th/cmp-nvim-lua" },
      { "hrsh7th/cmp-path" },
      { "onsails/lspkind-nvim" },
      { "petertriho/cmp-git" },
      { "ray-x/cmp-treesitter" },
      { "saadparwaiz1/cmp_luasnip" },
      { "uga-rosa/cmp-dictionary" },
      { "yutkat/cmp-mocword" },
      { "zbirenbaum/copilot-cmp" },
      {
        "tzachar/cmp-tabnine",
        build = "./install.sh",
        config = function()
          require("cmp_tabnine.config").setup({
            max_lines = 1000,
            max_num_results = 20,
            sort = true,
            run_on_every_keystroke = true,
            snippet_placeholder = "..",
            ignored_file_types = {
              -- default is not to ignore
              -- uncomment to ignore in lua:
              -- lua = true
            },
            show_prediction_strength = false,
          })
        end,
      },
    },
    config = function()
      require("pluginconfig/nvim-cmp")
    end,
  },
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
      timeout = 5000,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
      icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
      },
    },
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
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
    config = function()
      require("pluginconfig/dressing")
    end,
  },
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
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
    event = "VeryLazy",
    config = function()
      require("pluginconfig/lualine")
    end,
  },
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
      {
        "nvim-tree/nvim-web-devicons",
        config = function()
          require("nvim-web-devicons").setup({
            override = {
              ts = {
                icon = "ﯤ",
                color = "#3178C6",
              },
            },
          })
        end,
      },
      "MunifTanjim/nui.nvim",
      {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        "s1n7ax/nvim-window-picker",
        -- tag = "v1.*",
        config = function()
          require("window-picker").setup({
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { "neo-tree", "neo-tree-popup", "notify" },
                -- if the buffer type is one of following, the window will be ignored
                buftype = { "terminal", "quickfix" },
              },
            },
            other_win_hl_color = "#e35e4f",
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
  {
    "slim-template/vim-slim",
    event = "FileType",
    ft = { "slim" },
  },
  {
    "hrsh7th/nvim-insx",
    event = { "InsertEnter", "CmdlineEnter" },
    config = function()
      require("insx.preset.standard").setup()
    end,
  },
  {
    "vim-skk/skkeleton",
    dependencies = {
      "vim-denops/denops.vim",
    },
    event = "InsertEnter",
    config = function()
      vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(skkeleton-toggle)", {})
      vim.api.nvim_set_keymap("c", "<C-j>", "<Plug>(skkeleton-toggle)", {})
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VimEnter",
    config = function()
      require("pluginconfig/toggleterm")
    end,
  },
  {
    "MunifTanjim/nui.nvim",
    event = "VimEnter",
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VimEnter",
  },
  {
    "neovim/nvim-lspconfig",
    event = "VimEnter",
  },
  {
    "nvim-lua/plenary.nvim",
    event = "VimEnter",
  },
  {
    "nvim-tree/nvim-web-devicons",
    event = "VimEnter",
  },
  {
    "rcarriga/nvim-notify",
    event = "VimEnter",
  },
  {
    "folke/neodev.nvim",
    event = "VimEnter",
  },
  {
    "folke/trouble.nvim",
    event = "VimEnter",
  },
  {
    "j-hui/fidget.nvim",
    event = "VimEnter",
  },
  {
    "leoluz/nvim-dap-go",
    event = "VimEnter",
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "VimEnter",
  },
  {
    "mfussenegger/nvim-dap",
    event = "VimEnter",
  },
  {
    "monaqa/dial.nvim",
    event = "VimEnter",
  },
  {
    "neovim/nvim-lspconfig",
    event = "VimEnter",
  },
  {
    "nvim-lua/plenary.nvim",
    event = "VimEnter",
  },
  {
    "nvim-lua/popup.nvim",
    event = "VimEnter",
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VimEnter",
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    event = "VimEnter",
  },
  {
    "nvim-tree/nvim-web-devicons",
    event = "VimEnter",
  },
  {
    "onsails/lspkind-nvim",
    event = "VimEnter",
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VimEnter",
  },
  {
    "rcarriga/nvim-notify",
    event = "VimEnter",
  },
  {
    "s1n7ax/nvim-window-picker",
    event = "VimEnter",
  },
  {
    "stevearc/dressing.nvim",
    event = "VimEnter",
  },
  {
    "tamago324/nlsp-settings.nvim",
    event = "VimEnter",
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    event = "VimEnter",
  },
  {
    "tpope/vim-repeat",
    event = "VimEnter",
  },
  {
    "vim-denops/denops.vim",
    event = "VimEnter",
  },
  {
    "weilbith/nvim-lsp-smag",
    event = "VimEnter",
  },
  {
    "zbirenbaum/copilot.lua",
    event = "VimEnter",
  },
  {
    "nvim-lua/nvim-package-specification",
    event = "VimEnter",
  },
  { "wadackel/nvim-syntax-info" },
  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require("telescope").load_extension("frecency")
    end,
    dependencies = { "kkharji/sqlite.lua" },
  },
  {
    "iamcco/markdown-preview.nvim",
    event = "VimEnter",
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  { "AndrewRadev/linediff.vim" },
  { "David-Kunz/treesitter-unit" },
  { "Decodetalkers/csv-tools.lua" },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
  { "L3MON4D3/LuaSnip" },
  { "MTDL9/vim-log-highlighting" },
  { "Pocco81/abbrev-man.nvim" },
  { "RRethy/vim-illuminate" },
  { "TimUntersberger/neogit" },
  { "ahmedkhalf/project.nvim" },
  { "akinsho/git-conflict.nvim" },
  { "andymass/vim-matchup" },
  { "anishathalye/dotbot" },
  { "bfredl/nvim-luadev" },
  { "bkad/CamelCaseMotion" },
  { "dhruvasagar/vim-table-mode" },
  { "drmingdrmer/vim-toggle-quickfix" },
  { "edluffy/specs.nvim" },
  { "folke/todo-comments.nvim" },
  { "gabrielpoca/replacer.nvim" },
  { "ggandor/lightspeed.nvim" },
  { "goolord/alpha-nvim" },
  { "haya14busa/vim-asterisk" },
  { "haya14busa/vim-edgemotion" },
  { "hotwatermorning/auto-git-diff" },
  { "justinmk/vim-ipmotion" },
  { "kevinhwang91/nvim-bqf" },
  { "kevinhwang91/nvim-hlslens" },
  { "klen/nvim-config-local" },
  { "kristijanhusak/line-notes.nvim" },
  { "Vigemus/iron.nvim" },
  { "lewis6991/gitsigns.nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "machakann/vim-columnmove" },
  { "machakann/vim-sandwich" },
  { "mattn/vim-sonictemplate" },
  { "mopp/vim-operator-convert-case" },
  { "mrjones2014/legendary.nvim" },
  { "mvllow/modes.nvim" },
  { "myusuf3/numbers.vim" },
  { "norcalli/nvim-colorizer.lua" },
  { "ntpeters/vim-better-whitespace" },
  { "numToStr/Comment.nvim" },
  { "nvim-telescope/telescope-dap.nvim" },
  { "petertriho/nvim-scrollbar" },
  { "phaazon/hop.nvim" },
  { "pwntester/octo.nvim" },
  { "renerocksai/telekasten.nvim" },
  { "rhysd/committia.vim" },
  { "rmagatti/auto-session" },
  { "rmagatti/session-lens" },
  { "segeljakt/vim-silicon" },
  { "sentriz/vim-print-debug" },
  { "sidebar-nvim/sidebar.nvim" },
  { "sindrets/diffview.nvim" },
  { "t9md/vim-quickhl" },
  { "terryma/vim-multiple-cursors" },
  { "tyru/capture.vim" },
  { "tyru/open-browser-github.vim" },
  { "tyru/open-browser.vim" },
  { "unblevable/quick-scope" },
  { "voldikss/vim-translator" },
  { "windwp/nvim-autopairs" },
  { "windwp/nvim-ts-autotag" },
  { "yutkat/wb-only-current-line.nvim" },
  {
    'akinsho/bufferline.nvim',
    version = "v3.*",
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
}
