vim.cmd[[
filetype plugin on
filetype indent on
syntax on
]]

require('factorials.plugins')
require('factorials.lsp')
require('factorials.nvim-tree')

--vim.cmd('colorscheme dracula')
vim.g.gruvbox_contrast_dark = 'hard'
vim.g.gruvbox_contrast_light = 'hard'

vim.cmd('colorscheme gruvbox')
vim.opt.background = 'dark'

vim.opt.shortmess = vim.o.shortmess .. 'c'
vim.opt.hidden = true
vim.opt.whichwrap = 'b,s,<,>,[,],h,l,~'
vim.opt.pumheight = 10
vim.opt.encoding = 'utf-8'
vim.opt.ruler = true
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.fileencoding = 'utf-8'
vim.opt.cmdheight = 1
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.conceallevel = 0
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.clipboard = 'unnamedplus'
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 3
--vim.opt.sidescrolloff = 5
vim.opt.mouse = 'a'
vim.opt.wrap = true

vim.opt.backspace = '2'
vim.opt.linebreak = true
vim.opt.textwidth = 0

vim.opt.number = true
vim.opt.cursorline = true
--vim.opt.signcolumn = 'yes'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4


--vim.opt.indentexpr = ''
--vim.opt.autoindent = true
--vim.opt.smartindent = false
--vim.opt.cindent = false
vim.opt.cinkeys = ''


vim.opt.shiftround = true
vim.opt.expandtab = true


vim.opt.showmatch = true

vim.opt.history = 10000
vim.opt.undolevels = 10000
vim.opt.errorbells = false
vim.opt.hlsearch = true

vim.g.mapleader = ','

local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command) map('n', shortcut, command) end
local function imap(shortcut, command) map('i', shortcut, command) end
local function vmap(shortcut, command) map('v', shortcut, command) end
local function cmap(shortcut, command) map('c', shortcut, command) end
local function tmap(shortcut, command) map('t', shortcut, command) end

--nmap('<c-c>', '<esc>')
imap('<c-c>', '<esc>')
vmap('<c-c>', '<esc>')

vim.cmd[[
nmap <silent> <leader>ws :%s/\s\+$//e<CR>
]]


-- be able to edit things in the :command line
vim.cmd[[
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-f> <right>
cnoremap <c-b> <left>
cnoremap <m-f> <c-right>
cnoremap <m-b> <c-left>
cnoremap <c-k> <c-o>C
]]

nmap('<leader>nn', ':NvimTreeToggle<CR>')
nmap('<leader>nf', ':NvimTreeFindFile<CR>')
vim.cmd[=[
no <leader>d A [[<cr>    ---<cr>    ---<cr>]]<esc><up><up>o    <esc>!!date +"timestamp: \%Y-\%m-\%dT\%H:\%M:\%S\%:z"<cr>

iab pdb import ipdb; ipdb.set_trace()

inoremap {<cr> {<cr>}<c-o>O
inoremap {,<cr> {<cr>},<c-o>O
inoremap {;<cr> {<cr>};<c-o>O

inoremap ({<cr> ({<cr>})<c-o>O
inoremap ({,<cr> ({<cr>}),<c-o>O
inoremap ({;<cr> ({<cr>});<c-o>O

inoremap {)<cr> {<cr>})<c-o>O
inoremap {),<cr> {<cr>}),<c-o>O
inoremap {);<cr> {<cr>});<c-o>O

inoremap (<cr> (<cr>)<c-o>O
inoremap (,<cr> (<cr>),<c-o>O
inoremap (;<cr> (<cr>);<c-o>O

"inoremap [<cr> [<cr>]<c-o>O<tab>
"inoremap [,<cr> [<cr>],<c-o>O<tab>
"inoremap [;<cr> [<cr>];<c-o>O<tab>
"
"inoremap [{<cr> [{<cr>}]<c-o>O<tab>
"inoremap [{,<cr> [{<cr>}],<c-o>O<tab>
"inoremap [{;<cr> [{<cr>}];<c-o>O<tab>

inoremap {/*<cr> {/*<cr>*/}<c-o>O<tab>
"inoremap :<cr> :<cr><tab>

]=]


nmap('Y', 'y$')

nmap('<C-l>', '<C-l>zz')
nmap('t', 'gj')
nmap('n', 'gk')
nmap('s', 'l')
-- keep search matches in the middle of the window
nmap('l', 'nzzzv')
nmap('j', 't')
nmap('k', 's')

nmap('T', '}')
nmap('N', '{')
nmap('L', 'Nzzzv')
nmap('J', 'T')
--nmap('K', 'S')
nmap('S', '$')
nmap('H', '^')

vmap('t', 'gj')
vmap('n', 'gk')
vmap('s', 'l')
vmap('l', 'n')
vmap('j', 't')
vmap('k', 's')

vmap('T', '}')
vmap('N', '{')
vmap('L', 'N')
vmap('J', 'T')
vmap('K', 'S')
vmap('S', '$')
vmap('H', '^')

nmap('<leader>h', '<cmd>nohl<cr>')

nmap('-', 'J')
vmap('-', 'J')
nmap('Q', 'gqap')


-- Make space the wincmd
--nmap('<space>', '<c-w>')

nmap('<space>h', '<cmd>wincmd h<cr>')
nmap('<space>t', '<cmd>wincmd j<cr>')
nmap('<space>n', '<cmd>wincmd k<cr>')
nmap('<space>s', '<cmd>wincmd l<cr>')

nmap('<space>j', '<cmd>wincmd t<cr>')
nmap('<space>k', '<cmd>wincmd n<cr>')
nmap('<space>l', '<cmd>wincmd s<cr>')

nmap('<space>H', '<cmd>wincmd H<cr>')
nmap('<space>S', '<cmd>wincmd L<cr>')

nmap('<space>v', '<cmd>wincmd v<cr>')
nmap('<space>k', '<cmd>wincmd s<cr>')
nmap('<space>q', '<cmd>wincmd q<cr>')
nmap('<space>c', '<cmd>wincmd c<cr>')
nmap('<space>|', '<cmd>wincmd |<cr>')
nmap('<space>x', '<cmd>wincmd x<cr>')
nmap('<space>r', '<cmd>wincmd r<cr>')
nmap('<space>R', '<cmd>wincmd R<cr>')

nmap('<space><space>', '<cmd>w<cr>')

nmap('<leader>cl', '<cmd>set bg=light<cr>')
nmap('<leader>cd', '<cmd>set bg=dark<cr>')
nmap('<leader>cx', '<cmd>!chmod +x %<cr>')
nmap('<leader>xx', '<cmd><cr><cmd>source %<cr>')

-- TODO need to get the module name from the path returned by %, or find a way to find the path of the current module
--nmap('<leader>xr', 'R(vim.fn.expand("%"))')




nmap('<C-e>', '3<C-e>')
nmap('<C-y>', '3<C-y>')

imap(',', ',<c-g>u')
imap('.', '.<c-g>u')
imap('!', '!<c-g>u')
imap('?', '?<c-g>u')


nmap('<C-p>', '<cmd>Telescope find_files<cr>')
nmap('<C-g>', '<cmd>Telescope live_grep<cr>')
nmap('<C-?>', '<cmd>Telescope help_tags<cr>')
--nmap('<leader>rf', ':Telescope find_files<cr>')
--nmap('<leader>rg', ':Telescope live_grep<cr>')
--nmap('<leader>rh', ':Telescope help_tags<cr>')

nmap('<leader>tN', ':TestNearest<cr>')
nmap('<leader>tF', ':TestFile<cr>')
nmap('<leader>tS', ':TestSuite<cr>')
nmap('<leader>tL', ':TestLast<cr>')
nmap('<leader>tV', ':TestVisit<cr>')

nmap('<leader>tn', ':TestNearest --keepdb<cr>')
nmap('<leader>tf', ':TestFile --keepdb<cr>')
nmap('<leader>ts', ':TestSuite --keepdb<cr>')
nmap('<leader>tl', ':TestLast --keepdb<cr>')
nmap('<leader>tv', ':TestVisit --keepdb<cr>')


vim.cmd[[
let test#strategy = "neovim"
"let test#python#pytest#options = '-s'
]]


vim.cmd[[
set title
augroup WindowTitleGroup
  autocmd!
  autocmd BufEnter,BufFilePost * let &titlestring = expand('%:.')
augroup end
]]
