# Project Drawer
- Seamlessly change current working directory in Vim.

### How to Install
- For [vim-plug](https://github.com/junegunn/vim-plug) → `Plug 'w3bdev1/ProjectDrawer'`

### Optional Dependency
- [fzf.vim](https://github.com/junegunn/fzf.vim)

### Set Up
- Set the list of your parent project directories in the variable 
- For example → `let g:PDPaths = ['/home/username/notes', '/home/username/projects']`

### How to Use
- It gives you command `:PD` which has tab completion for the project directory paths.
- If `fzf.vim` is installed, you have `:PDFZF` command to fuzzy find over project directories.
