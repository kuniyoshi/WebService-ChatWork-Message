use strict;
use warnings;
package WebService::ChatWork::Message::Tag;
use overload q{""} => \&as_string;
use Mouse;
use Smart::Args;

has message  => ( is => "ro", isa => "Str" );

sub new {
    args_pos my $class,
             my $message;

    my $self = bless { message => $message }, $class;

    return $self;
}

sub as_string { shift->{message} }

1;
