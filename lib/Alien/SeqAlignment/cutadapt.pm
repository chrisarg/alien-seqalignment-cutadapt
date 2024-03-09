use strict;
use warnings;
package Alien::SeqAlignment::cutadapt;
$Alien::SeqAlignment::cutadapt::VERSION = '0.01';
# VERSION '0.01';
use parent qw( Alien::Base );

=head1 NAME

Alien::SeqAlignment::cutadapt - Find or install cutadapt

=head1 SYNOPSIS

Command line tool:

cutadapt (list of options);

=head1 DESCRIPTION

This distribution provides the python tool cutadapt so that it can be used by 
other Perl distributions that are on CPAN.  It does this by first trying to
detect an existing install of cutadapt on your system.  If found it
will use that.  If it cannot be found, it will use the Python package installer
pipx to download and install cutadapt in an isolated environment for each
user.



=head1 SEE ALSO

=over 4

=item L<cutadapt|https://cutadapt.readthedocs.io/en/stable/index.html>

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


=item L<Alien>

Documentation on the Alien concept itself.

=item L<Alien::Base>

The base class for this Alien.

=item L<Alien::Build::Manual::AlienUser>

Detailed manual for users of Alien classes.

=back

=head1 AUTHOR

Christos Argyropoulos <chrisarg@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2024 by Christos Argyropoulos.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

1;
