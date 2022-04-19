#! /usr/bin/bash

echo "yo " # declare beginning of script with a cool exclamation

mylist="htop neofetch vim firefox"
yes_answer="y"


function install_function {
    for thing in ${mylist[@]}; do

        # next is the real shit
        apt install $thing -y
        echo
        echo "+++++ another one done +++++"
        echo

        # for testing this one is better
        #echo $thing
    done
}

function call_pythonfile {
    python3 manage_rc_files.py
}

#echo -n "Do you want to install things (y/n): "; read answer
read -p "Do you want to install things? (y/n): " answer

if [[ "$yes_answer" == "$answer" ]]; then
    echo "yöt, istalling things"
    install_function
    echo "the installing has ended"

fi

read -p "Do you want to setup vimrc (~/.vimrc)? (y/n): " vim_answer

if [[ "$yes_answer" == "$vim_answer" ]]; then
    call_pythonfile
    echo "vimrc has been set up "
fi

echo "yo, done"
