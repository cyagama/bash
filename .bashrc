export PATH=$HOME/.nodebrew/current/bin:$PATH

source /usr/local/Cellar/git/2.21.0/etc/bash_completion.d/git-completion.bash
source /usr/local/Cellar/git/2.21.0/etc/bash_completion.d/git-prompt.sh

# プロンプトに各種情報を表示
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

############### ターミナルのコマンド受付状態の表示変更
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $

export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1 "(%s)" | sed -e "s/=)$/)/g")\[\033[00m\] \$ '
##############

export GREP_COLOR="0;34"

function sourcegrep()
{
    for x in "$@"
    do
        echo -e "\033[1;31m************************************************** "$x"の検索結果 **************************************************\033[0;39m"
        grep -n -r "$x" ./ --color=auto --include="*.h" --include="*.c" --include="*.cpp" --include="*.cs"
        echo;
    done
}
