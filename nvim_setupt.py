#! /usr/bin/python3
import getpass
import os
#this file should be called by the programm installer/main file
#this file should set upt the vimrc and bash rc file

#print("Hello world")

def copie_file():
    with open("init.vim") as file:
        vimrc_content = file.read()
    #print(vimrc_content)
    #with open(rf"/home/{getpass.getuser()}/.vimrc_test", "w") as file
    dir_path = rf"/home/{getpass.getuser()}/.config/nvim/"
    os.mkdir(dir_path)
    with open(rf"/home/{getpass.getuser()}/.config/nvim/init.vim", "w") as file:
        file.write(vimrc_content)
        print("init.vim has bin written")

try:
    with open(rf"/home/{getpass.getuser()}/.config/nvim/init.vim", "r") as file:
        content = file.read()
        if content == "":
            copie_file()
        else:
            y_n = input("The file is already written, do you want to overwrite it? (y/n): ")
            if y_n == "y":
                copie_file()
            else:
                print("file was not overwritten")

except FileNotFoundError:
    print("The file you wanted to setup does not exist yet.")
    y_n = input("Do you want to replace it with the copied vimrc file? (y/n): ")
    if y_n == "y":
        #print("copieng vimrc")
        copie_file()
