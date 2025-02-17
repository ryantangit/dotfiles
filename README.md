# dotfiles
- Ubuntu 24 LTS
- deploy.sh is destructive, backup if needed.
---

## Directory
| App | Location |
| --- | --- | 
| [Kitty](#kitty) | `mv ./kitty ~/.config/kitty` |
| [Nvim](#nvim) | `mv ./nvim ~/.config/nvim` |
| [Tmux](#tmux) | `mv tmux.conf ~/.tmux.conf` |

---
---

### Kitty   
Installation: `sudo apt install kitty`

**Set Up Requires Additional Download**
- Requires [Lilex Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Lilex.zip)

---

### Nvim
[Installation](https://github.com/neovim/neovim/blob/master/INSTALL.md)

**Set Up Requires Additional Downloads**
- Current lua version: 5.4
    - Installation of Lua: `sudo apt install lua5.4 liblua5.4-dev`
    - Installation of LuaRock, package manager for lua: https://luarocks.org/

#### Lazy Nvim Pluggin Manager
[Documentation](https://github.com/folke/lazy.nvim)

---

### Tmux
Installation: `sudo apt install tmux`
