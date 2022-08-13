# 環境変数の設定
# set PATH $HOME/.pyenv/shims /usr/local/bin /usr/bin $PATH
# set PATH $HOME/.pyenv/bin $PATH

set PATH /usr/local/opt/sbt@0.13/bin $PATH
set PATH $HOME/bin/realesrgan-ncnn-vulkan $PATH

set PATH /opt/homebrew/bin $PATH

set PATH /opt/homebrew/opt/openssl@1.1/bin $PATH
set PATH /opt/homebrew/opt/tcl-tk/bin $PATH

set PATH ~/.local/bin $PATH
set PATH ~/bin $PATH

set PATH ~/.nimble/bin $PATH

set -x SSLKEYLOGFILE ~/.ssl-key.log $SSLKEYLOGFILE

# source (pyenv init - | psub)

# エイリアス設定
alias rm "trash"
alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"

# 別名設定
abbr mv "mv -iv"
abbr ufw '/usr/libexec/ApplicationFirewall/socketfilterfw --listapps'

# 関数定義
command_not_found_handler
