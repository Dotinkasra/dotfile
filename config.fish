if status is-interactive
    # Commands to run in interactive sessions can go here
end

# path
fish_add_path /usr/bin
fish_add_path /opt/homebrew/bin 
fish_add_path /opt/homebrew/sbin
fish_add_path $HOME/bin 
fish_add_path $HOME/bin/shellscript 
fish_add_path $HOME/.local/bin 
fish_add_path /opt/homebrew/opt/mysql-client/bin
fish_add_path /opt/homebrew/mysql-client/bin

# tools
fish_add_path $HOME/bin/realesrgan-ncnn-vulkan 
fish_add_path $HOME/bin/realcugan-ncnn-vulkan 
fish_add_path $HOME/bin/dain-ncnn-vulkan 
fish_add_path $HOME/.local/share/yaskkserv2
fish_add_path -m $HOME/bin/ffmpeg/bin 

# programming
set -gx GRADLE_HOME $HOME/bin/gradle
fish_add_path $GRADLE_HOME/bin 

fish_add_path $HOME/.goenv/bin 
fish_add_path /usr/local/opt/node/bin 
fish_add_path $HOME/.nimble/bin 

fish_add_path $HOME/.cargo/bin 
set -gx RUSTC_WRAPPER $HOME/.cargo/bin/sccache

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish
set -gx JAVA_HOME $HOME/.asdf/plugins/java/set-java-home.fish

# env
set icloud /Users/twemu/Library/Mobile\ Documents/com~apple~CloudDocs/
set -gx SSLKEYLOGFILE $HOME/.ssl-key.log 
set -gx CHROME_EXECUTABLE "/Applications/Brave Browser.app/Contents/MacOS/Brave Browser"

# abbr
abbr -a real 'realesrgan-ncnn-vulkan -m /Users/twemu/bin/realesrgan-ncnn-vulkan/models -n realesrgan-x4plus-anime'
abbr -a mv 'mv -iv'
abbr -a veracrypt '/Applications/VeraCrypt.app/Contents/MacOS/VeraCrypt --text'
abbr -a L --position anywhere --set-cursor "% | less"
abbr -a yt --set-cursor 'yt-dlp -f % --embed-thumbnail --add-metadata'
abbr -a nohup --set-cursor 'nohup % > /dev/null 2>&1 &'

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

