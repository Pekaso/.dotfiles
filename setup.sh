#!/bin/bash

echo "###環境一括設定用スクリプト by Pekaso###"
echo "このスクリプトでは設定ファイルのシンボリックリンクを設定します．"
echo "以下のソフトウェアのインストールが必要となります．"
echo "[zsh, tmux, emacs, openssh]"
echo ""
echo "開始してよろしいでしょうか？ [Y/n]"
read ANSWER

ANSWER=`echo $ANSWER | tr y Y | tr -d '[\[\]]'`

case $ANSWER in
    ""|Y* )
    ln -s ~/.dotfiles/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/.tmux.conf.ssh ~/.tmux.conf.ssh
    ln -s ~/.dotfiles/.emacs.el ~/.emacs.el
    mkdir -p ~/.emacs.d
    ln -s ~/.dotfiles/themes ~/.emacs.d/themes
    mkdir -p ~/.emacs.d/site-lisp
    cd ~/.emacs.d/site-lisp/
    git clone git@github.com:joaotavora/yasnippet.git
    cd ~/.emacs.d/
    git clone git@github.com:AndreaCrotti/yasnippet-snippets.git
    git clone git@github.com:Pekaso/mysnippets.git
    echo "設定終了";;
    *  ) echo "キャンセルしました．";;
esac

