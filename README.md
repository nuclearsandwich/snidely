Snidely
======
*A suite of tools for managing dotfiles between multiple systems.*

Why?
----
As hackers, we know the benefit and sense in keeping our config files
in some sort of revision control system such as git or mercurial. We
also do our best to keep those files portable across all the machines
we work with. But every system is unique and we may find ourselves on
multiple platforms such as OS X and Linux. Many of these configs will
be common between all systems but as they evolve we tend to prefer
little details are different on each one. This set of tools hopes to
make sharing form and structure as easy as keeping platform and system
specific details separate.

How?
----
Snidely uses the amazing [Mustache](https://github.com/defunkt/mustache)
library for Ruby to generate our configs. I also rely on
[Thor](http://github.com/wycats/thor) for the command line tool.


