Zamicol's Vim Configuration
============

Not much to see here. :)
#Installation

Install using git/ssh and initilize submodules
```sh
if [ ! -d "$HOME/.vim" ]; then ( 
  cd ~/; git clone git://github.com/Zamicol/dotvim.git ~/.vim; 
  cd ~/.vim; git submodule init; git submodule update; ) fi
```

Install using https and initilize submodules
```sh
if [ ! -d "$HOME/.vim" ]; then ( 
  cd ~/; git clone https://github.com/Zamicol/dotvim.git ~/.vim; 
  cd ~/.vim; git submodule init; git submodule update; ) fi
```



Installation without initilization of the submodules
```sh
git clone https://github.com/Zamicol/dotvim.git ~/.vim
```
