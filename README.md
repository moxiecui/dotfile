Installation
=======
iTerm2
-------
1. Set up iTerm2 preference:

        $ cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

Vim
-------
1. Set up [Vundle](https://github.com/gmarik/Vundle.vim):

        $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
2. Copy .vimrc to home directory:

        $ cp .vimrc ~/.vimrc
3. Install Plugins:

    Launch `vim` and run `:PluginInstall`

Git
-------
1. Set up ~/.gitignore:

        $ git config --global core.excludesfile ~/.gitignore
2. Copy .gitignore to home directory:

        $ cp .gitignore ~/.gitignore

Zsh
-------
1. Install Zsh:

        $ brew install zsh
        $ chsh -s /usr/local/bin/zsh
2. Set up [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh):

        $ git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
3. Copy .zshrc to home directory:

        $ cp .zshrc ~/.zshrc
