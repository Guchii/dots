lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "tokyonight"
vim.g.tokyonight_style='night'
vim.g.user_emmet_leader=','
vim.g.user_emmet_mode='n'
vim.opt.shiftwidth = 4
lvim.highlight_line = false
lvim.transparent_window = true
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-y>"] = "y$"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = false
lvim.keys.normal_mode["<F5>"]=":TermExec cmd='clear; g++ % &&./a.out && rm a.out'<cr>"
lvim.builtin.telescope.defaults.file_ignore_patterns = { ".git", "node_modules" }
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "right"
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
    colors = {
         '#f7768e',
         '#9ece6a',
         '#e0af68',
         '#7aa2f7',
         '#bb9af7',
         '#7dcfff',
    }
}
lvim.plugins = {
{ "lukas-reineke/indent-blankline.nvim",
  event = "BufRead",
  setup = function()
    vim.g.indentLine_enabled = 1
    vim.g.indent_blankline_char = "▏"
    vim.g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
    vim.g.indent_blankline_buftype_exclude = {"terminal"}
    vim.g.indent_blankline_show_trailing_blankline_indent = false
    vim.g.indent_blankline_show_first_indent_level = false
  end
},
  {'norcalli/nvim-colorizer.lua'},
  {'tpope/vim-surround'},
  {"tzachar/cmp-tabnine",
      run = "./install.sh",
      requires = "hrsh7th/nvim-cmp",
      config = function()
        local tabnine = require "cmp_tabnine.config"
        tabnine:setup {
          max_lines = 1000,
          max_num_results = 20,
          sort = true,
        }
      end,
    },
{"folke/tokyonight.nvim"},
{'sudormrfbin/cheatsheet.nvim'},
{'p00f/nvim-ts-rainbow'},
{'dsznajder/vscode-es7-javascript-react-snippets'},
 { 'mattn/emmet-vim' },
}

lvim.builtin.dashboard.custom_header = {
 '                                                       ',
 '                                                       ',
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

vim.cmd([[
    autocmd BufNewFile,BufRead *.jsx set filetype=javascriptreact
]])
