## Environment variable configuration
# LANG
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

export EDITOR=subl
export PATH=$PATH:$HOME/local/bin:/usr/local/git/bin
export PATH=$PATH:$HOME/dotfiles/bin
export PATH=$PATH:/sbin:usr/local/bin
export MANPATH=$MANPATH:/opt/local/man:/usr/local/share/man

# ヒストリを保存するファイル
export HISTFILE=~/.zsh_history
# メモリ上のヒストリ数
export HISTFILESIZE=100000000
# 保存するヒストリ数
export SAVEHIST=$HISTFILESIZE

## Default LESS configuration
export LESS='-R'
export LESSOPEN='| ~/local/bin/src-hilite-lesspipe.sh %s'

## preport time
# 実行したプロセスの消費時間が3秒以上なら
# 自動的に消費時間の統計情報を表示する
export PREPORTTIME=3

## Default git configuration
export GIT_PAGER='/usr/local/bin/lv -c -Au8'

## terminal configuration
## http://journal.mycom.co.jp/column/zsh/009/index.html
unset LSCOLORS

case "${TERM}" in
xterm)
    export TERM=xterm-color
    ;;
kterm)
    export TERM=kterm-color
    # set BackSpace control character
    stty erase
    ;;

cons25)
    unset LANG
    export LS_COLORS='di=01;32:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30'
    zstyle ':completion:*' list-colors \
    'di=;36;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34'
;;

kterm*|xterm*)
    export CLICOLOR=1
    export LSCOLORS=ExFxCxDxBxegedabagacad

    zstyle ':completion:*' list-colors \
    'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
;;

dumb)
    echo "Welcome Emacs Shell"
    ;;
esac

# Defaults mercurial configuration
#
export HGENCODING=utf-8

case $OSTYPE {
    linux*)
        ZSH_THEME="gentoo"
        ;;
    darwin*)
        ZSH_THEME="iori"
        ;;
}
