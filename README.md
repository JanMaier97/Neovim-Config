# Neovim configuration

## Preconditions

Install scoop
```
iwr -useb get.scoop.sh | iex
```

If there is an error, try this:
```
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

Install NeoVim:
```
scoop install neovim
```

## Setup

### Clone the repository:
```
git clone https://github.com/JanMaier97/Neovim-Config.git ~/Appdata/local/nvim
```

### Download vim-plug:

#### Unix, Linux
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

#### Windows Powershell
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

```

#### Install dependencies
- Git
- ctags
- make  
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [patched font](https://www.nerdfonts.com/font-downloads)
- [fd](https://github.com/sharkdp/fd#installation)
- gcc from [here](https://github.com/chawyehsu/dorado#featured-apps) / fix below
- `npm install -g typescript typescript-language-server`

```
scoop bucket add dorado https://github.com/chawyehsu/dorado
scoop install dorado/winlibs-mingw
```
