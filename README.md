# NAME

Alien::SeqAlignment::cutadapt - Find or install cutadapt

# VERSION

version 0.05

# SYNOPSIS

Command line tool:

    system 'cutadapt' (list of arguments and options);
    system "cutadapt  (list of argumentns and options)"; # less safe
    

or you can even do this to maintain compatibility with the Alien tool API

    system Alien::SeqAlignment::cutadapt->cutadapt (list of arguments and options)

# DESCRIPTION

This distribution provides the python tool cutadapt so that it can be used by 
other Perl distributions that are on CPAN.  It does this by first trying to
detect an existing install of cutadapt on your system.  If found it
will use that.  If it cannot be found, it will use the Python package installer
pipx to download and install cutadapt in an isolated environment for each
user. Note that after installation one ends up with a tool that can be used
from the shell (i.e. no need for Perl), hence uninstalling the Perl module will
not uninstall cutadapt or pipx. If you would like to uninstall cutadapt, then
you should use pipx to uninstall it as in: 

    pipx uninstall cutadapt.

Note that the installation method of pipx varies by operating system. 
MacOS and Windows users should have working installations of homebrew and scoop 
respectively to use this Perl Alien module.

# METHODS

## cutadapt

    Alien::SeqAlignment::cutadapt->cutadapt

Returns the command name for running the CLI version of the cutadapt CLI. 

# SEE ALSO

- [cutadapt](https://cutadapt.readthedocs.io/en/stable/index.html)

    Cutadapt finds and removes adapter sequences, primers, poly-A tails and 
    other types of unwanted sequence from your high-throughput sequencing
    reads.

    Cleaning your data in this way is often required: Reads from small-RNA 
    sequencing contain the 3' sequencing adapter because the read is longer
    than the molecule that is sequenced. Amplicon reads start with a primer
    sequence. Poly-A tails are useful for pulling out RNA from your sample,
    but often you don't want them to be in your reads.

    Cutadapt helps with these trimming tasks by finding the adapter or
    primer sequences in an error-tolerant way. It can also modify and filter
    single-end and paired-end reads in various ways. Adapter sequences can
    contain IUPAC wildcard characters. Cutadapt can also demultiplex your
    reads.

- [pipx](https://pipx.pypa.io/stable/)

    pipx is a tool to help you install and run end-user applications written 
    in Python. It's roughly similar to macOS's brew, JavaScript's npx, and
    Linux's apt.

    It's closely related to pip. In fact, it uses pip, but is focused on 
    installing and managing Python packages that can be run from the command
    line directly as applications. 

    How is it Different from pip?

    pip is a general-purpose package installer for both libraries and apps 
    with no environment isolation. pipx is made specifically for application
    installation, as it adds isolation yet still makes the apps available in
    your shell: pipx creates an isolated environment for each application
    and its associated packages.

    pipx does not ship with pip, but installing it is often an important
    part of bootstrapping your system.

- [Homebrew](https://brew.sh/)

    Homebrew installs the stuff you need that Apple (or your Linux system) didn't.

- [Scoop](https://scoop.sh/)

    Scoop is a command-line installer for Windows that:
    \*Eliminates permission popup windows
    \*Hides GUI wizard-style installers
    \*Prevents PATH pollution from installing lots of programs
    \*Avoids unexpected side-effects from installing and uninstalling programs
    \*Finds and installs dependencies automatically
    \*Performs all the extra setup steps itself to get a working program

- [Alien](https://metacpan.org/pod/Alien)

    Documentation on the Alien concept itself.

- [Alien::Base](https://metacpan.org/pod/Alien%3A%3ABase)

    The base class for this Alien.

- [Alien::Build::Manual::AlienUser](https://metacpan.org/pod/Alien%3A%3ABuild%3A%3AManual%3A%3AAlienUser)

    Detailed manual for users of Alien classes.

- [Bio::SeqAlignment](https://metacpan.org/pod/Bio::SeqAlignment)

    A collection of tools and libraries for aligning biological sequences 
    from within Perl. 

# AUTHOR

Christos Argyropoulos <chrisarg@gmail.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2024 by Christos Argyropoulos.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
