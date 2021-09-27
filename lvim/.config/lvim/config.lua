lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "tokyonight"
vim.g.tokyonight_style='dark'
vim.opt.shiftwidth = 4
lvim.transparent_window = true
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-y>"] = "y$"
lvim.keys.normal_mode["<F9>"] = "y$"
vim.opt.relativenumber = true
vim.opt.cursorline = true
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
    vim.g.indentLine_indentLevel = 2
  end
},
{'norcalli/nvim-colorizer.lua'},
{'tpope/vim-surround'},
{"folke/tokyonight.nvim"},
{'sudormrfbin/cheatsheet.nvim'},
{'p00f/nvim-ts-rainbow'},
{'dsznajder/vscode-es7-javascript-react-snippets'},
{ 'mattn/emmet-vim' },
{ 'phanviet/vim-monokai-pro'},
{'Shatur/neovim-ayu'},
{'andweeb/presence.nvim',
    event = "BufRead",
    setup = function()
    vim.g.presence_auto_update         = 1
    vim.g.presence_neovim_image_text   = "The One True Text Editor"
    vim.g.presence_main_image          = "neovim"
    vim.g.presence_client_id           = "793271441293967371"
    vim.g.presence_debounce_timeout    = 10
    vim.g.presence_enable_line_number  = 1
    vim.g.presence_blacklist           = {}
    vim.g.presence_buttons             = 1
    end
    },
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
    let g:user_emmet_leader_key=','
    let g:user_emmet_mode='n'
    augroup SaveManualFolds
        autocmd!
        au BufWinLeave, BufLeave ?* silent! mkview
        au BufWinEnter           ?* silent! loadview
    augroup END

    vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
]])

lvim.lang.html.formatters = { { exe = 'prettier' } }
lvim.lang.javascript.formatters = { { exe = 'prettier' } }
lvim.lang.javascriptreact.formatters = { { exe = 'prettier' } }
-- lvim.lang.javascriptreact.linters = { { exe = 'eslint' } }
-- lvim.lang.javascript.linters = { { exe = 'eslint' } }
