# all env
set -x SHELL /usr/bin/fish
# remove greeting message
set fish_greeting ""
# ユーザ空間のプログラムの保存先
set PATH $HOME/.local/bin $PATH

alias s sudo
alias se sudoedit
# vagrant の debug レベル
# debug
# info  出力の量のバランスがいいらしい
# warn
# error
alias vagrant-with-detailerror "env VAGRANT_LOG=info vagrant"

alias history-all-delete "history clear"


# Settings for hook
load-hook direnv

# settings for vscode remote extension
if is_remote_extension
    # sudoedit のエディタを vscode に変更
    set code_path (which code)
    set -gx SUDO_EDITOR "$code_path --wait"
    set -gx EDITOR "$code_path --wait"
end


# settings for wsl
if is_wsl
    # Settings for WSL
    # key agent
    if ! pgrep gpg-agent > /dev/null;
        gpg-agent --homedir /home/yn/.gnupg --daemon > /dev/null
    end
    if [ -z $SSH_AUTH_SOCK ]
        set -U SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
    end
    alias vivaldi /mnt/c/users/ynnys/AppData/Local/Vivaldi/Application/vivaldi.exe
    alias psh /mnt/c/Windows/System32/WindowsPowerShell/v1.0//powershell.exe
    # 引数として -ArgumentList '-Command ~' を与えてやれば，~ を実行してくれる
    alias psh-admin "/mnt/c/Windows/System32/WindowsPowerShell/v1.0//powershell.exe Start-Process powershell.exe -Verb RunAs"
    # 自分の公開鍵を取得する
    alias gpk "curl -s https://github.com/yn-git.keys | clip.exe" 
    alias sshfordocker "ssh -NL localhost:23750:/var/run/docker.sock docker-host &"
    alias cmd_to_deploy_dotfiles "echo 'git clone https://github.com/ynny-github/dotfiles.git && cd dotfiles && ./install.fish' | clip.exe "end
end

# colab
if is_colab
    cd ~/gdrive/MyDrive/colab_dev/Projects
end