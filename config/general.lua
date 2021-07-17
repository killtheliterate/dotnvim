require('check-path')
-- asdfasdfasdf

-- General
------------------------------------------------------------------------------
-- The basixxx
vim.o.mapleader = '\<Space>'

-- A: mad settings
vim.o.clipboard:prepend('unnamed,unnamedplus')
vim.o.colorcolumn = 79
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.formatoptions:append('qrn1')
vim.o.formatoptions:append('w')
vim.o.hidden = true
vim.o.list = true
vim.o.mouse = 'a'
vim.o.mousehide = true
vim.o.nobackup = true
vim.o.noswapfile = true
vim.o.nowb = true
vim.o.nowrap = true
vim.o.number = true
vim.o.sessionoptions = 'resize,winpos,winsize,buffers,tabpages,folds,curdir,help'
vim.o.shiftwidth = 2
vim.o.sidescroll = 1
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.tabstop = 2
vim.o.textwidth = 78

-- B: search
vim.api.nvim_set_keymap('n', '<Space>c', ':nohlsearch<CR>', { silent = true } )
vim.o.ignorecase = true
vim.o.smartcase = true

-- C: undo
vim_cache = '../backups'
if not isdir(vim_cache) then
    os.execute("mkdir ../backups")
end
vim.o.undodir = vim_cache
vim.o.undofile = true

-- D: folds
vim.o.nofoldenable = true

-- E: wildcards
vim.o.wildignore:append('*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem')
vim.o.wildignore:append('*.swp,*~,._*')
vim.o.wildignore:append('*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz')
vim.o.wildignore:append('*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*')

-- F: mappings
-- Yank without jank: http://bit.ly/1Wcj4dI
vim.api.nvim_set_keymap('v', '<expr>y', [["my\"" . v:register . "y`y"]], { noremap = true } )

-- preserve indentation on paste
vim.api.nvim_set_keymap('', '<leader>p', [[:set paste<CR>:put  *<CR>:set nopaste<CR>]], { noremap = true })

-- remove trailing whitespace
vim.api.nvim_set_keymap('n', '<leader>rtw', ':%s/\s\+$//e<CR>', { noremap = true })

-- Ooh, cool
vim.o.inccommand = 'nosplit'
