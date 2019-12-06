
# Install HomeBrew
if test ! $(which brew)
then
    echo "Installing Homebrew for you..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Iterm2
brew cask install iterm2

# Install zsh
brew install zsh zsh-completions

# Install ohmyzsh
if [ ! -d ~/.oh-my-zsh ]
then
    info 'installing oh-my-zsh'
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install more recent versions of some macOS tools.
brew install vim --head
brew install neovim

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# search tool
brew install the_silver_searcher
brew install ripgrep
brew install fd
brew install grep

# fzf 
brew install fzf 
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

# Universal ctags
brew install --HEAD universal-ctags

# Gnu global
brew install global --HEAD 

# automake
brew install automake

# autoconf
brew install autoconf

# 鼠鬚管 Squirrel
brew cask install squirrel

# A tiling window manager for macOS based on binary space partitioning
brew tap koekeishiya/formulae
brew install --HEAD yabai
