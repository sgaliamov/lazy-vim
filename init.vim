" Make sure to set `mapleader` before lazy so your mappings are correct
let mapleader = ' '
let maplocalleader = '\\'

source ~/.vimrc

lua << EOF
-- to make work may need to create symlink:
-- mklink /d C:\tools\neovim\nvim-win64\bin\lua C:\Users\u01sga\AppData\Local\nvim
require('init-neovim')
EOF
