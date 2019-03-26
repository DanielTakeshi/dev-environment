# dev-environment

Dev environment.  Will add more comments and notes here.

For Ubuntu systems, put `bashrc` in `~/.bashrc` [For Mac OS X, put this in
`~/.bash_profile` instead][2]. In both cases, put aliases in `~/.bash_aliases`.

Put `vimrc` in `~/.vimrc`.

## Virtualenvwrapper

For virtual environments using the wrapper, use:

```
pip install --user virtualenvwrapper
```

So you only need `pip` installed globally. I don't know else to get around it,
though, so someone will have to do `sudo apt-get install python-pip`. But that
should be the only global thing related to pip.

And then for Python3, do:

```
mkvirtualenv --python=`which python3` name-of-env
```

But, sometimes I think I actually need:

```
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
```

before the `virtualenvwrapper.sh` script, because otherwise I'd get errors like
these:

```
user@machine:~ $ . ~/.bashrc
/usr/bin/python: No module named virtualenvwrapper
virtualenvwrapper.sh: There was a problem running the initialization hooks.

If Python could not import the module virtualenvwrapper.hook_loader,
check that virtualenvwrapper has been installed for
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python and that PATH is
set properly.
user@machine:~ $
```

I needed python3, not python... [see this StackOverflow answer for details][1].

This also happens sometimes with GNU screen. If this happens, just source
activate it the normal way. Also, always double check Python versions when
creating virtualenvs.

## References

Inspired by [Roshan Rao's dev env][3], and many others.


[1]:https://askubuntu.com/questions/244641/how-to-set-up-and-use-a-virtual-python-environment-in-ubuntu/244642#244642
[2]:https://askubuntu.com/questions/244641/how-to-set-up-and-use-a-virtual-python-environment-in-ubuntu/244642#244642
[3]:https://github.com/rmrao/dev-environment
