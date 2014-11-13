Installation
=======
iTerm2
-------
1. Set up iTerm2 preference:

        $ cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

Zsh
-------
1. Install Zsh:

        $ brew install zsh
        $ chsh -s /usr/local/bin/zsh
2. Set up [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh):

        $ git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
3. Copy .zshrc to home directory:

        $ cp .zshrc ~/.zshrc

Git
-------
1. Copy .gitconfig to home directory:

        $ cp .gitconfig ~/.gitconfig
2. Copy .gitignore to home directory:

        $ cp .gitignore ~/.gitignore

Tmux
-------
1. Install Tmux:

        $ brew install tmux
2. Cpoy .tmux.config to home directory:

        $ cp .tmux.conf ~/.tmux.conf

Vim
-------
1. Set up [Vundle](https://github.com/gmarik/Vundle.vim):

        $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
2. Copy .vimrc to home directory:

        $ cp .vimrc ~/.vimrc
3. Install [powerline-fonts](https://github.com/Lokaltog/powerline-fonts):

        $ git clone git@github.com:Lokaltog/powerline-fonts.git
        $ cd powerline-fonts/
        $ ./install.sh
4. Install Plugins:

    Launch `vim` and run `:PluginInstall`
