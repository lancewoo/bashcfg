# colors of less for Man Pages
export LESS_TERMCAP_mb=$'\E[1;31m'      # begin blinking
export LESS_TERMCAP_md=$'\E[4;32m'      # begin bold
export LESS_TERMCAP_me=$'\E[0m'         # end mode
export LESS_TERMCAP_so=$'\E[0;31m'      # begin standout-mode - info box
export LESS_TERMCAP_se=$'\E[0m'         # end standout-mode
export LESS_TERMCAP_us=$'\E[0;33m'      # begin underline
export LESS_TERMCAP_ue=$'\E[0m'         # end underline


# Chinese locale
export LANG=zh_CN.GBK
export OUTPUT_CHARSET="GBK"
# Display Chinese
alias ls='ls --show-control-chars --color'
alias dir='ls --show-control-chars'
alias less='less --raw-control-chars' 

cd /d/ProgramFiles/Stocks/TdxConfigs
