# dotfiles

- `.bash_profile` 

`.bash_profile` is executed for login shells. When you login (type username and password) via console, either sitting at the machine, or remotely via ssh: `.bash_profile` is executed to configure your shell before the initial command prompt.

- .bashrc

`.bashrc` is executed for interactive non-login shells. if you’ve already logged into your machine and open a new terminal window (xterm) then .bashrc is executed before the window command prompt. `.bashrc` is also run when you start a new bash instance by typing `/bin/bash` in a terminal.

- .vimrc

`.vimrc` files are saved in a plain text format. They store a series of instructions, each of which can be run manually in the Vim editor by typing a colon ":" character and entering the command. Common settings include text indentation properties and window and font colors.
