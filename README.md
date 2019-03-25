# dev-environment

Dev environment.  Will add more comments and notes here.

For Mac OS X, put this in `.bash_profile` instead.

https://superuser.com/questions/244964/mac-os-x-bashrc-not-working

For Ubuntu systems, put in `.bashrc`


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


## References

Inspired by https://github.com/rmrao/dev-environment

And many others.
