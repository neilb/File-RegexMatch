package File::RegexMatch::File;

use strict;
use warnings;
use Carp;
use File::stat;

sub new {
    my ($class, %params) = @_;
    my ($self) = { 
        path => undef,
    };
    
    while (my ($key, $value) = each %params) {
        $self->{$key} = $value if exists $self->{$key};
    }

    $self->{path} ? $self->{stat} = stat($self->{path}) : croak $!;
    return bless $self, $class;
}

sub path {
    return shift->{path};
}

sub dev {
    return shift->{stat}->dev();
}

sub ino {
    return shift->{stat}->ino();
}

sub mode {
    return shift->{stat}->mode();
}

sub nlink {
    return shift->{stat}->nlink();
}

sub uid {
    return shift->{stat}->uid();
}

sub gid {
    return shift->{stat}->gid();
}

sub rdev {
    return shift->{stat}->rdev();
}

sub size {
    return shift->{stat}->size();
}

sub atime {
    return shift->{stat}->atime();
}

sub mtime {
    return shift->{stat}->mtime();
}

sub ctime {
    return shift->{stat}->ctime();
}

sub blksize {
    return shift->{stat}->blksize();
}

sub blocks {
    return shift->{stat}->blocks();
}

1;

__END__

=head1 NAME

File::RegexMatch::File - Object to represent a file.


=head1 SYNOPSIS

#!/usr/bin/env perl -w

use strict;
use File::RegexMatch::File;

File::RegexMatch::File->new(path => '/path/to/file');


=head1 DESCRIPTION

This module allows each file that has been located by File::RegexMatch
to be represented by an object. The object has methods for retrieving
information about the file using the File::stat module.


=head1 METHODS

=over

=item C<< new >>

=back

=over

=item C<< path >>

=back

=over

=item C<< dev >>

=back

=over

=item C<< ino >>

=back

=over

=item C<< mode >>

=back

=over

=item C<< nlink >>

=back

=over

=item C<< uid >>

=back

=over

=item C<< gid >>

=back

=over

=item C<< rdev >>

=back

=over

=item C<< size >>

=back

=over

=item C<< atime >>

=back

=over

=item C<< mtime >>

=back

=over

=item C<< ctime >>

=back

=over

=item C<< blksize >>

=back

=over

=item C<< blocks >>

=back


=head1 SEE ALSO

File::stat


=head1 BUGS

Please report any bugs or feature requests to lloydg@cpan.org


=head1 AUTHOR

Lloyd Griffiths


=head1 COPYRIGHT

Copyright (c) 2013, Lloyd Griffiths

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

=cut