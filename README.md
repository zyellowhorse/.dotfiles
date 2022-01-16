Install Windows Terminal
set the starting directory for ubuntu to //wsl$/Ubuntu/home/zac and set it to default
add a space picture as terminal background and set opacity to 30% 
Install Cascadia Mono PL font found (here)[https://github.com/microsoft/cascadia-code/releases] and update windows terminal to use the newly installed font

first update and upgrade packages
``` 
sudo apt update
sudo apt upgrade
```

# Install ZSH
``` sudo apt install zsh ```
set as default shell 
``` sudo usermod -s /usr/bin/zsh $(whoami) ```
then restart the terminial. Once open again zsh will prompt for how you want to setup zsh. I pick 2 to use the recommended.

### Install Oh-My-Zsh and plugins
``` sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ```
I also install the zsh-autosuggestions plugin
``` git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ```

Also install powerlevel10k for pretty command line.
```git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k```
restart shell `exec zsh`

# Get .dotfiles
make a .ssh directory in home 
``` mkdir ~/.ssh ```
make a ssh key to give to github
``` ssh-keygen -f laptop -P "" ```
start ssh agent and add key
```
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/laptop
```
provide the public key to github following this (document)[https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account]

clone .dotfiles repo

# Install stow 
``` sudo apt install stow ```

run the install to stow all directories in dotfiles directory
``` ./install ```

# Install Nvim
I build Nvim from source because the package mangers a quite behind in versions
Link on documentation for build source https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source
need to install the prerequsites then build

## Install vim-plug for plugins
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
After open nvim and run `:PlugInstall` to install all the plugins

### Install gopls for golang server lsp
`go install golang.org/x/tools/gopls@latest`

### Install lsp for yaml
`yarn global add yaml-language-server`

### Install the dependencies for telescope
https://github.com/nvim-telescope/telescope.nvim#getting-started
ripgrep, fzf-native, treesitter

### Install dependencies for vim-terraform
good guide https://dev.to/braybaut/integrate-terraform-language-server-protocol-with-vim-38g
download lsp https://github.com/juliosueiras/terraform-lsp/releases

# Install Lazy Git
```
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get update
sudo apt-get install lazygit
```
