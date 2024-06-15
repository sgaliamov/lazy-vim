" Make sure to set `mapleader` before lazy so your mappings are correct
let mapleader = ' '
let maplocalleader = '\\'

source ~/.vimrc

lua << EOF
require('init-neovim')
EOF

