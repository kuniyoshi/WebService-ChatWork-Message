use strict;
use warnings;
package WebService::ChatWork::Message;
use Carp ( );
use String::CamelCase qw( camelize );
use Class::Load qw( try_load_class );
use WebService::ChatWork::Message::Tag;

# ABSTRACT: A Tag Builder is for ChatWork

our $VERSION = "0.00";

sub new {
    my $class  = shift;
    my $tag    = shift;
    my @params = @_;
    my $package = "$class\::Tag";

    if ( !@params && $tag ne "hr" ) {
        @params = ( $tag );
        $tag = q{};
    }
    else {
        $package = sprintf "$class\::Tag::%s", camelize( $tag );
    }

    try_load_class( $package )
        or die "Could not load $package.";

    return $package->new( @params );
}

1;
