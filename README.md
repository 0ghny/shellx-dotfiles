# shellx-dotfiles
Dotfiles plugin management for Shell X


This plugin adds some shell functions that helps to work with `dotfiles` management using the `git bare repo` approach.

It's based on the following documents:

- https://www.atlassian.com/git/tutorials/dotfiles
- https://coffeeaddict.dev/how-to-manage-dotfiles-with-git-bare-repo/

## Provides

- `dotfiles` shell command to operate with dotfiles
- `get-dotfiles` to install dotfiles from a repository into your local machine
- `dotfiles-update` update dotfiles with latest changes from origin

## Install

```shell
# Having shellx already installed and loaded into your SHELL
$ shellx plugins install https://github.com/0ghny/shellx-dotfiles
```

## Configure

This plugin has some configuration properties that can be used to apply some customisations:

| CONFIG VAR | DEFAULT | DESCRIPTION |
| ---------- | ------- | ----------- |
| SHELLX_PLUGINS_DOTFILES_HOME | ${HOME}/.dotfiles | Place where the dotfiles bare repo will be |

