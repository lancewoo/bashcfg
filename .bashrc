# Chinese locale
export LANG=zh_CN.GBK
export OUTPUT_CHARSET="GBK"
# Display Chinese
alias ls='ls --show-control-chars --color'
alias l='ls -l --show-control-chars --color'
alias dir='ls --show-control-chars'
alias less='less --raw-control-chars' 

# 忽略重复的命令
export HISTCONTROL=ignoredups
# 忽略由冒号分割的这些命令
export HISTIGNORE="[   ]*:&:bg:fg:exit"
# 设置保存历史命令的件大小
export HISTFILESIZE=1000000000
# 保存历史命令条数
export HISTSIZE=1000000
#使用追加而不是覆盖的方式将命令写入文件
shopt -s histappend
#每执行完一条命令就将其写回文件。bash每执行完一条命令，都要显示一个新的提示符，而在显示提示符的同时，会执行保存在环境变量PROMPT_COMMAND里面的命令（通常被用来为终端设置标题）
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"



cd /d/ProgramFiles/Stocks/TdxConfigs
