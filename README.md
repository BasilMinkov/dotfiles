# dotfiles

Here I store my collection of the [dotfiles](https://wiki.archlinux.org/index.php/Dotfiles). At some point this repo should become a semiautomatic tool to apply all the custom setups on a completely new machine.

- [`.bash_profile`](https://github.com/BasilMinkov/dotfiles/blob/master/.bash_profile)

`.bash_profile` is executed for login shells. When you login (type username and password) via console, either sitting at the machine, or remotely via ssh: `.bash_profile` is executed to configure your shell before the initial command prompt.

- [`.bashrc`](https://github.com/BasilMinkov/dotfiles/blob/master/.bashrc)

`.bashrc` is executed for interactive non-login shells. if you’ve already logged into your machine and open a new terminal window (xterm) then .bashrc is executed before the window command prompt. `.bashrc` is also run when you start a new bash instance by typing `/bin/bash` in a terminal.

- [`.bash_prompt`](https://github.com/BasilMinkov/dotfiles/blob/master/.bash_prompt)

`.bashrc` is executed for prompt customisation. 

- [`.vimrc`](https://github.com/BasilMinkov/dotfiles/blob/master/.vimrc)

`.vimrc` store a series of instructions, each of which can be run manually in the Vim editor by typing a colon ":" character and entering the command. Common settings include text indentation properties and window and font colors.
