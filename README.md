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
