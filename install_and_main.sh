#! /usr/bin/bash

echo "yo " # declare beginning of script with a cool exclamation

# mylist="hi das steht hire so"
yes_answer="y"


function install_function {
    for thing in ${mylist[@]}; do 

        # next is the real shit
        ###apt install $thing
        ###echo "another one done \n"

        # for testing this one is better 
        echo $thing
    done
}

function setup_vimrc {
    echo ":syntax on" >> ~/.vimrc    
    echo ":set relavitvenumber" >> ~/.vimrc    
    echo ":set number" >> ~/.vimrc    
    echo ":inoremap üü <Esc>" >> ~/.vimrc    
    echo "" >> ~/.vimrc
    echo ':set expandtab:set tabstop=4     " Size of a hard tabstop (ts).' >> ~/.vimrc 
    echo ':set shiftwidth=4  " Size of an indentation (sw).' >> ~/.vimrc
    echo ':set expandtab     " Always uses spaces instead of tab characters (et).' >> ~/.vimrc
    echo ':set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).' >> ~/.vimrc
    echo ':set autoindent    " Copy indent from current line when starting a new line.' >> ~/.vimrc
    echo ':set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).' >> ~/.vimrc
    echo "" >> ~/.vimrc    
    echo "" >> ~/.vimrc    
}


#echo -n "Do you want to install things (y/n): "; read answer
read -p "Do you want to install things? (y/n): " answer

if [[ "$yes_answer" == "$answer" ]]; then 
    echo "yöt es hat geklappt"
    install_function

fi

read -p "Do you want to setup vimrc (~/.vimrc)? (y/n): " vim_answer

if [[ "$yes_answer" == "$vim_answer" ]]; then
    setup_vimrc
    echo " vimrc has been set up "
fi

echo "yo, done"