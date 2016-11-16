export ZSH=/Users/naoki/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# 文字コードの指定
export LANG=ja_JP.UTF-8

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# cdなしでディレクトリ移動
setopt auto_cd

# ビープ音の停止
setopt no_beep

# ビープ音の停止(補完時)
setopt nolistbeep

# cd -<tab>で以前移動したディレクトリを表示
setopt auto_pushd

# ヒストリ(履歴)を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# キーバインディングをemacs風に(-vはvim)
bindkey -e
# bindkey -v

# zsh-completionsの設定
fpath=(/path/to/homebrew/share/zsh-completions $fpath)

autoload -U compinit
compinit -u


alias rs='bundle exec rails s'
alias bi='bundle install'

alias rr='bundle exec rake routes'
alias rdc='bundle exec rake db:create'
alias rdm='bundle exec rake db:migrate'
alias rdd='bundle exec rake db:drop'
alias rds='bundle exec rake db:seed_fu'

alias gpod='git pull origin develop'

