# Chinese locale
export LANG=zh_CN.GBK
export OUTPUT_CHARSET="GBK"
# Display Chinese
alias ls='ls --show-control-chars --color'
alias l='ls -l --show-control-chars --color'
alias dir='ls --show-control-chars'
alias less='less --raw-control-chars' 

# �����ظ�������
export HISTCONTROL=ignoredups
# ������ð�ŷָ����Щ����
export HISTIGNORE="[   ]*:&:bg:fg:exit"
# ���ñ�����ʷ����ļ���С
export HISTFILESIZE=1000000000
# ������ʷ��������
export HISTSIZE=1000000
#ʹ��׷�Ӷ����Ǹ��ǵķ�ʽ������д���ļ�
shopt -s histappend
#ÿִ����һ������ͽ���д���ļ���bashÿִ����һ�������Ҫ��ʾһ���µ���ʾ����������ʾ��ʾ����ͬʱ����ִ�б����ڻ�������PROMPT_COMMAND��������ͨ��������Ϊ�ն����ñ��⣩
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"



cd /d/ProgramFiles/Stocks/TdxConfigs
