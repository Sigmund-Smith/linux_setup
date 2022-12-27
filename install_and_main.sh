#! /usr/bin/bash

echo "yo " # declare beginning of script with a cool exclamation

mylist="htop neofetch vim firefox clang keepassxc kile"
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

function install_massenger {
    apt install thunderbird -y
    echo 
    echo "++++ installed thunderbird ++++"
    flatpak install org.telegram.desktop
    echo
    echo "++++ install telegra.desktop +++"
}


#echo -n "Do you want to install things (y/n): "; read answer
read -p "Do you want to install code things? (y/n): " answer

if [[ "$yes_answer" == "$answer" ]]; then
    echo "yöt, istalling things"
    install_function
    echo "the installing has ended"

fi

read -p "Do you want to install communication things (y/n): " comm_answer

if [[ "$yes_answer" == "$comm_answer" ]]; then
    echo "yöt, istalling things"
    install_massenger
    echo "telegram and thunderbird have benn installed"

fi

read -p "Do you want to setup vimrc (~/.vimrc)? (y/n): " vim_answer

if [[ "$yes_answer" == "$vim_answer" ]]; then
    call_pythonfile
    echo "vimrc has been set up "
fi

read -p "Do you want to setup your nvim config (~/.config/nvim/init.vim)? (y/n): " nvim_answer

if [[ "$yes_answer" == "$nvim_answer" ]]; then
    python3 nvim_setup.py
    echo "nvim/init.vim has been set up!"
fi

echo "yo, done"
