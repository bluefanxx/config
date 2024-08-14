-- always set leader first!
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

-------------------------------------------------------------------------------
--
-- preferences
--
-------------------------------------------------------------------------------
-- disable the use of mouse
vim.opt.mouse = ""
-- always draw sign column. prevents buffer moving when adding/deleting sign
vim.opt.signcolumn = 'yes'
-- never show me line breaks if they're not there
vim.opt.wrap = false
-- sweet sweet relative line numbers
vim.opt.relativenumber = true
-- and show the absolute line number for the current line
vim.opt.number = true
-- when opening a file with a command (like :e),
-- don't suggest files like there:
vim.opt.wildignore = '.hg,.svn,*~,*.png,*.jpg,*.gif,*.min.js,*.swp,*.o,vendor,dist,_site'
-- tabs: go big or go home
vim.opt.shiftwidth = 8
vim.opt.softtabstop = 8
vim.opt.tabstop = 8
vim.opt.expandtab = false
-- case-insensitive search/replace
vim.opt.ignorecase = true
-- unless uppercase in search term
vim.opt.smartcase = true
-- never ever make my terminal beep
vim.opt.vb = true
-- show more hidden characters
-- also, show tabs nicer
vim.opt.listchars = 'tab:^ ,nbsp:¬,extends:»,precedes:«,trail:•'
-- disables the swap file
vim.opt.swapfile = false
vim.opt.scrolloff = 10

-------------------------------------------------------------------------------
--
-- hotkeys
--
-------------------------------------------------------------------------------
-- quick-open
vim.keymap.set('', '<C-p>', '<cmd>Files<cr>')

-- <leader>c will copy
-- <leader>v will paste
vim.keymap.set({ "n", "v" }, "<leader>c", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>v", [["+p]])

-- no arrow keys --- force yourself to use the home row
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('i', '<up>', '<nop>')
vim.keymap.set('i', '<down>', '<nop>')
vim.keymap.set('i', '<left>', '<nop>')
vim.keymap.set('i', '<right>', '<nop>')

-- better navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { remap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { remap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { remap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { remap = true, silent = true })

-- make j and k move by visual line, not actual line, when text is soft-wrapped
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
