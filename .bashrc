#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Default promt
PS1='\[\e[97;48;5;94m\] \
\A \[\e[30;48;5;70m\] \
\u \[\e[97;48;5;94m\] \
@ \[\e[30;48;5;70m\] \
\h \[\e[34;48;5;255m\] \
\W \[\e[97;48;5;94m\] \
$ \[\e[0m\] '

# Aliases
alias prp="pipenv run python3"
alias rma="sudo rm -R"
alias chmodarwx="sudo chmod -R a+rwx ./"
alias pipdist="python setup.py sdist bdist_wheel && \
python -m twine upload dist/* --skip-existing"
alias sd="sudo docker"
alias sdc="sudo docker-compose"
alias prop="sudo pacman -Rns $(pacman -Qtdq)"

# Start X on login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
