Installation
=======
OSX
-------
1. Disable some keyboard shortcuts:
    1. System Preferences -> Keyboard -> Shortcuts
    2. Disable ^→, ^←, and F12

iTerm2
-------
1. Install [iTerm2](http://iterm2.com/downloads.html)
2. Set up iTerm2 preference:

        $ cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

Homebrew
-------
1. Install [Homebrew](http://brew.sh/):

        $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
1. Install Git:

        $ brew install git
2. Copy .gitconfig to home directory:

        $ cp .gitconfig ~/.gitconfig
3. Copy .gitignore to home directory:

        $ cp .gitignore ~/.gitignore

Tmux
-------
1. Install Tmux:

        $ brew install tmux
2. Cpoy .tmux.config to home directory:

        $ cp .tmux.conf ~/.tmux.conf

Vim
-------
1. Install Vim with Lua:

        $ brew install vim --with-lua
2. Set up [Vundle](https://github.com/gmarik/Vundle.vim):

        $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
3. Copy .vimrc to home directory:

        $ cp .vimrc ~/.vimrc
4. Install [powerline-fonts](https://github.com/Lokaltog/powerline-fonts):

        $ git clone git@github.com:Lokaltog/powerline-fonts.git
        $ cd powerline-fonts/
        $ ./install.sh
5. Install Plugins:

    Launch `vim` and run `:PluginInstall`
