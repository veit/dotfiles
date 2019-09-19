A collection of ``.gitignore`` templates
========================================

Folder structure
----------------

The templates are organised as follows:

* the root folder contains templates in common use
* `global <./global>`_ contains templates for various editors, tools and
  operating systems. It is recommended that you add these to your global
  template with the following command in your terminal::

    $ git config --global core.excludesfile ~/.gitignore

Explicit repository excludes
----------------------------

If you don’t want to share a ``.gitignore`` file with others, you can edit the
file ``.git/info/exclude`` within the root of your Git repository.

Further Reading
---------------

* `Ignoring Files
  <https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository#_ignoring>`_
  of the `Pro Git book <http://git-scm.com/book>`_
* `GitHub collection of .gitignore files
  <https://github.com/github/gitignore>`_

