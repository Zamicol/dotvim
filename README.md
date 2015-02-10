Zamicol's Vim Configuration
============

A few things:

 - jj to exit insert
 - f4 for paste mode
 - `;` is mapped to `:`

##Installation
####Step 1
Install vim, git
####Step 2
Choose one of the following three:

1. Install using git/ssh and initilize submodules
```sh
if [ ! -d "$HOME/.vim" ]; then ( 
  cd ~/; git clone git://github.com/Zamicol/dotvim.git ~/.vim; 
  cd ~/.vim; git submodule init; git submodule update; ) fi
```

2. Install using https and initilize submodules
```sh
if [ ! -d "$HOME/.vim" ]; then ( 
  cd ~/; git clone https://github.com/Zamicol/dotvim.git ~/.vim; 
  cd ~/.vim; git submodule init; git submodule update; ) fi
```


3. Installation without initilization of the submodules
```sh
git clone https://github.com/Zamicol/dotvim.git ~/.vim
```

####Step 3
Make a symbolic link to the vimrc file in your home directory.  

````ln -s ~/.vim/vimrc ~/.vimrc````


