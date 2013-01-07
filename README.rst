
A set of configuration files and plugins, partly inspired by the following

``http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide``


Installation instructions
-------------------------

Just clone from Github, and create a soft link to the :file:`.vimrc` in your home directory. Update the submodules containing the repositories using::

    $ git clone https://github.com/pbugnion/dotvim.git ~/.vim
    $ ln -s ~/.vim/.vimrc
    $ cd ~/.vim
    $ git submodule init
    $ git submodule update


Workstation-dependent settings
------------------------------

``.vimrc`` will source a ``vim_local`` file in the ``.vim`` directory. This file is not under version control. Put all system-specific settings in there.


Adding a new plugin
-------------------

Plugins are kept in the folder `bundle` and handled by `pathogen`. Thus, if the plugin is available as a `git` repository, it can be installed by running::

    $ git submodule add /path/to/submodule/on/github /bundle/submodule_name


Updating plugins
----------------

Use::

    $ git submodule foreach git pull origin master

This will update all the plugins.


Plugins installed
-----------------

- pathogen 
- pep8 : python syntax checking.
- pyflakes : python syntax checking.
- pydoc : python core documentation.
- ropevim : python code analysis and refactoring.
- snipmate : insert code snippets.
- supertab : use tab for completion.
- taglist : list of tags.
- fugitive : git integration.
- surround : handle delimiters around text snippet.
