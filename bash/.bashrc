export PS1='[\[\e[01;32m\]\u\[\e[m\]@\[\e[01;32m\]\h\[\e[m\]:\[\e[01;37m\]\w\[\e[m\]] \[\e[35m\]$(__git_ps1)\[\e[m\]\n\[\e[01;32m\]\$\[\e[m\] '
source ~/.git-prompt.sh

alias mc='EDITOR=vim mc'

function ta ()
{
    #clean older info
    rm -rf tags
    rm -rf cscope.files
    rm -rf cscope.out
    # generate new info
    find . -name '*.py' \
    -o -name '*.java' \
    -o -iname '*.[CH]' \
    -o -name '*.cpp' \
    -o -name '*.cc' \
    -o -name '*.hpp'  \
    > cscope.files

    # -b: just build
    # -q: create inverted index
    cscope -b -q
    ctags -R 
}