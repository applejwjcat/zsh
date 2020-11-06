export XDG_CONFIG_HOME=$HOME/.config
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export EDITOR="nvim"
export LANG=en_US.UTF-8
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/Users/tristan/Library/Python/3.8/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/ncurses/lib"
# export CPPFLAGS="-I/usr/local/opt/ncurses/include"

export CPLUS_INCLUDE_PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1
export PATH="/Users/tristan/.local/bin:$PATH"
export PATH="/Library/TeX/texbin:$PATH"
export PATH="/usr/local/anaconda3/bin:$PATH"
# HomeBrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
# HomeBrew END
export MYNVIM="/Users/Tristan/.config/nvim"

# Python environment
export WORKON_HOME=$HOME/Documents/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
# source /Users/tristan/Library/Python/3.8/bin/virtualenvwrapper.sh

# ccls
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export CPPFLAGS="-I/usr/local/opt/libffi/include"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

# GO
export GOPATH=/Users/tristan/Documents/Go
export GOBIN=$GOPATH/bin
