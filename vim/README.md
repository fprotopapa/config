# Vim
```
# On Ubuntu default vim is compiled w/o clipboard support
sudo apt-get install vim-gtk3

# Check for vim support
vim --version | grep 'clipboard'
+clipboard
```
| Shortcut | Description |
| -------- | ----------- |
| y  | Copy | 
| p  | Paste |
| "+y | Copy to special register (not needed if enabled on default) |
| CTRL + \, CTRL + n | Leave terminal mode |
| :tabedit \<file> | Opens file in new tab |
| g + t | Next tab |
| g + T | Previous tab |
| :noh | Remove search highlight |
| :u (NM) | Undo last change |
| CTRL + r | Redo last change |
| G | Goto end of file |
| gg | Goto top of file |
| \<#>G | Goto line number |
| :\<#> | Goto line number |

- https://vim.rtorr.com/

## Debug
```
:packadd termdebug
:Termdebug
```