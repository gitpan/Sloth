package Sloth::Request;
BEGIN {
  $Sloth::Request::VERSION = '0.02';
}
use Moose;
use namespace::autoclean;

has plack_request => (
    is => 'ro',
    required => 1,
    handles => [qw( path method query_parameters header )],
);

has path_components => (
    required => 1,
    is => 'ro'
);

1;

__END__
=pod

=encoding utf-8

=head1 NAME

Sloth::Request

=head1 AUTHOR

Oliver Charles

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Oliver Charles <sloth.cpan@ocharles.org.uk>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

