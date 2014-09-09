
export PAGER="/usr/bin/most -s"
export TERM=xterm-256color
export PATH=/usr/local/cuda-5.5/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-5.5/lib:/usr/local/cuda-5.5/lib64:/usr/lib32:/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH

export TERM='xterm-256color'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
