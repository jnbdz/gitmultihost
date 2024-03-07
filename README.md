# gitmultihost
Shell tool to facilitate the usage of `git` in a context where you have multiple hosts in your `~/.ssh/config`.

This script automatically catches the HTTPS or the SSH url and then using [`fzf`](https://github.com/junegunn/fzf) (general-purpose command-line fuzzy finder) to give you a quick way to select a host that is in `~/.ssh/config`.

## Install
```bash
sudo make install
```

## How-to
### Cloning a repo
```bash
gitmultihost clone git@github.com:user/repo.git
```
What follows is [`fzf`](https://github.com/junegunn/fzf) listing the hosts. After selecting a host it will change the `github.com` (or any other domain name) with the host selected.

### Changing the remote origin
This is useful if there are already repositories that have not been configured to used one of the hosts.
```bash
gitmultihost -c
```
or
```bash
gitmultihost --change-remote
```
or
```bash
gitmultihost remote set-url origin git@github.com:user/repo.git
```
It will do the same as cloning and will ask you with [`fzf`](https://github.com/junegunn/fzf) what host you want to use.

### Any Other Command
Those were just examples of what can be done with the tool. Any other `git` command can be used and every time there is a HTTPS or a SSH url it will givethe option to select a different host based on what is in `~/.ssh/config`.
