# dotfiles
### Instructions:
```
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
echo ".dotfiles" >> .gitignore
git clone --bare <git-repo-url> $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```
(See [here](https://www.atlassian.com/git/tutorials/dotfiles) for complete instructions.)

Notes for reference:

Mouse scroll left/right bindings:
https://askubuntu.com/a/634239

For coc-nvim & coc-python use a virtualenv to contain all pip packages so don't need to install separately when in another virtualenv.
This repo contains requirements.txt's for both virtualenvs.
so in `.config/nvim` create virtualenvs `neovim2` & `neovim3` for python 2 and 3 respectively and set them up in `init.vim`. 
